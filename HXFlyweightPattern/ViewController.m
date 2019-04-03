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

@property (nonatomic, strong) NSMutableArray *bookArray;
@property (nonatomic, strong) HXBookFactory *bookFactory;

@end

@implementation ViewController

- (void)viewDidLoad {
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self lookLook];
}

- (void)lookLook {
    for (NSInteger i = 0; i < 1000 * 500; i++) {
        /** 享元模式借阅 */
        HXBookType type = arc4random_uniform(HXBookType_Total);
        HXBookModel *model = [self.bookFactory bookWithType:type];
        [self.bookArray addObject:model];
        
        /** 普通方式借阅 */
//                HXBookModel *model = [[HXBookModel alloc] init];
//                model.name = @"1";
//                model.imageName = @"1-1";
//                [self.bookArray addObject:model];
    }
}

- (NSMutableArray *)bookArray {
    if (!_bookArray) {
        _bookArray  = [[NSMutableArray alloc] init];
    }
    return _bookArray;
}

- (HXBookFactory *)bookFactory {
    if (!_bookFactory) {
        _bookFactory  = [[HXBookFactory alloc] init];
    }
    return _bookFactory;
}

@end
