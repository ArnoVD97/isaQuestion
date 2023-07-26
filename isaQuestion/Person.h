//
//  Person.h
//  isaQuestion
//
//  Created by zzy on 2023/7/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *hobby;

- (void)printMyPro;

@end

NS_ASSUME_NONNULL_END
