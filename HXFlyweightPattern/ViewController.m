//
//  ViewController.m
//  HXFlyweightPattern
//
//  Created by hubery on 2019/4/1.
//  Copyright © 2019年 hubery. All rights reserved.
//

#import "ViewController.h"
#import "HXBookFactory.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *personArray;
@property (nonatomic, strong) HXBookFactory *bookFactory;

@end

@implementation ViewController

- (void)viewDidLoad {
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    for (NSInteger i = 0; i < 1000 * 500; i++) {
        HXBookType type = arc4random_uniform(HXBookType_Total);
        HXBookModel *model = [self.bookFactory bookWithType:type];
        [self.personArray addObject:model];
        
//        HXBookModel *model = [[HXBookModel alloc] init];
//        model.name = @"1";
//        model.imageName = @"1-1";
//        [self.personArray addObject:model];
    }
}

- (NSMutableArray *)personArray {
    if (!_personArray) {
        _personArray  = [[NSMutableArray alloc] init];
    }
    return _personArray;
}

- (HXBookFactory *)bookFactory {
    if (!_bookFactory) {
        _bookFactory  = [[HXBookFactory alloc] init];
    }
    return _bookFactory;
}

@end
