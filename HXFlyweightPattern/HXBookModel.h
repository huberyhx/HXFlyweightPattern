//
//  HXBookModel.h
//  HXFlyweightPattern
//
//  Created by haoxu.wang on 2019/4/3.
//  Copyright © 2019年 hubery. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HXBookModel : NSObject

/** 书名 */
@property (nonatomic, strong) NSString *name;
/** 插画 */
@property (nonatomic, strong) NSString *imageName;

@end

NS_ASSUME_NONNULL_END
