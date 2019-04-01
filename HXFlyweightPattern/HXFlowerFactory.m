//
//  HXFlowerFactory.m
//  HXFlyweightPattern
//
//  Created by hubery on 2019/4/1.
//  Copyright © 2019年 hubery. All rights reserved.
//

#import "HXFlowerFactory.h"

@implementation HXFlowerFactory

- (HXFlowerModel *)flowerWithType:(HXFlowerType)type {
        // 去享元池里面取
        HXFlowerModel *flower = [self.flowerPool objectForKey:[NSNumber numberWithInteger:type]];
        
        // 如果没取到就创建并加入享元池
        if (!flower) {
                flower = [[HXFlowerModel alloc] init];
                switch (type) {
                        case HXFlowerType_Zero:
                                flower.flowerName = @"0";
                                break;
                                
                        case HXFlowerType_One:
                                flower.flowerName = @"1";
                                break;
                                
                        case HXFlowerType_Two:
                                flower.flowerName = @"2";
                                break;
                                
                        case HXFlowerType_Three:
                                flower.flowerName = @"3";
                                break;
                                
                        case HXFlowerType_Four:
                                flower.flowerName = @"4";
                                break;
                                
                        case HXFlowerType_Five:
                                flower.flowerName = @"5";
                                break;
                                
                        default:
                                break;
                }
                [self.flowerPool setObject:flower forKey:[NSNumber numberWithInt:type]];
        }
        
        return flower;
}

- (NSMutableDictionary *)flowerPool {
        if (!_flowerPool) {
                _flowerPool = [[NSMutableDictionary alloc]init];
        }
        return _flowerPool;
}

@end

