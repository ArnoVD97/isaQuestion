//
//  Person+teacher.m
//  isaQuestion
//
//  Created by zzy on 2023/7/20.
//

#import "Person+teacher.h"
#import <objc/runtime.h>

@implementation Person (teacher)
/*给key设值有三种比较好的的方法
    因为key值类型为const void*,任何类型的值，其实就是给个唯一的标识
    
    1.我们针对每个属性，定义-个全局的key名， 然后取其地址，这一定是唯一的加上static,只在文件内部有效
    static const void *NameKey = &NameKey;
    static const void *WeightKey = &WeightKey;
    
    2.针对每个属性，因为类中的属性名是唯一的，直接拿属性名作为key
    #define NameKey = @"name";
    #define WeightKey = @"weight";
    
    3.使用@selector作为key
    直接用属性名对应的get方法的selector,有提示不容易写错
    并且get方法隐藏参数cmd 可以直接用，看上去就会更加简洁
    以下实例代码就是用的第三种方式
    */
- (void)setSexual:(NSString *)sexual {
    //通过一个key给对象关联一个值
    objc_setAssociatedObject(self,@selector(sexual), sexual, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (NSString *)sexual {
    //通过一个key,取出对象所关联的值
            //隐式参数 _cmd = @selector(sexual)
    return objc_getAssociatedObject(self, _cmd);
}

@end
