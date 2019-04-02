//
//  HXFlowerFactory.h
//  HXFlyweightPattern
//
//  Created by hubery on 2019/4/1.
//  Copyright © 2019年 hubery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HXFlowerModel.h"

typedef enum {
        HXFlowerType_Zero,
        HXFlowerType_One,
        HXFlowerType_Two,
        HXFlowerType_Three,
        HXFlowerType_Four,
        HXFlowerType_Five,
        HXFlowerType_Total
}HXFlowerType;

@interface HXFlowerFactory : NSObject

// 缓存池, 存放享元对象
@property (nonatomic, strong) NSMutableDictionary *flowerPool;

// 创建花的工厂方法
- (HXFlowerModel *)flowerWithType:(HXFlowerType)type;

@end
