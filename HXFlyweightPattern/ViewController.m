//
//  ViewController.m
//  HXFlyweightPattern
//
//  Created by hubery on 2019/4/1.
//  Copyright © 2019年 hubery. All rights reserved.
//

#import "ViewController.h"
#import "HXFlowerFactory.h"

@interface ViewController ()
@property(nonatomic,strong) NSMutableArray *array;
@property(nonatomic,strong) HXFlowerFactory *factory;
@end

@implementation ViewController

- (void)viewDidLoad {
        
}

- (IBAction)buttonClick:(UIButton *)sender {
        HXFlowerModel *model = self.array[0];
        model.flowerName = @"www";
        NSLog(@"");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
        for (NSInteger i = 0; i < 100 * 500; i++) {
                int type = arc4random_uniform(HXFlowerType_Total);
                HXFlowerModel *model = [self.factory flowerWithType:type];
//                HXFlowerModel *model = [[HXFlowerModel alloc] init];
//                model.flowerName = [NSString stringWithFormat:@"%d",type];
                [self.array addObject:model];
        }
}

- (NSMutableArray *)array {
        if (!_array) {
                _array = [[NSMutableArray alloc]init];
        }
        return _array;
}

- (HXFlowerFactory *)factory {
        if (!_factory) {
                _factory = [[HXFlowerFactory alloc]init];
        }
        return _factory;
}

@end
