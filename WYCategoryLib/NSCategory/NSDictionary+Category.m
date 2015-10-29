//
//  NSDictionary+Category.m
//  WYCategory
//
//  Created by 3TI on 14-1-16.
//  Copyright (c) 2014年 qiaquan. All rights reserved.
//

#import "NSDictionary+Category.h"

#import <objc/runtime.h>

@implementation NSDictionary (Category)



@end


@implementation NSDictionary (json)


+(NSDictionary *) jsonDictionaryWithObject:(id)object{

    if(!object) return nil;
    
    NSError *error = nil;
    if([object isKindOfClass:NSString.class]){
    
        NSData *data = [object dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:NO];

        id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
        if(error)
            return nil;
        return json;
    }else if([object isKindOfClass:NSData.class]){
    
        id json = [NSJSONSerialization JSONObjectWithData:object options:0 error:&error];
        if(error)
            return nil;
        return json;
    }
    
    return nil;
}

- (id)objectWithKey:(NSString *)key {
    NSString *rslt = nil;
    for (NSString *kt in self.allKeys) {
        if ([kt isEqualToString:key]) {
            rslt = self[kt];
            break;
        }
        id value = self[kt];
        if ([value isKindOfClass:[NSDictionary class]] && (((NSDictionary *)value)).count) {
           rslt = [value objectWithKey:key];
            if (rslt) {
                break;
            }
        }
    }
    return rslt;
}

@end