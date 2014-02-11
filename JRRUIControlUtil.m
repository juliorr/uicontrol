//
//  JRRUIControlUtil.m
//  UIControlUtil
//
//  Created by Julio Rodriguez on 2/7/14.
//  Copyright (c) 2014 Julio Rodriguez. All rights reserved.
//

#import "JRRUIControlUtil.h"

@implementation JRRUIControlUtil

- (void) displayAndHideElements:(NSArray *) elementsToShow availableElements:(NSDictionary *)allElements {
    NSMutableDictionary *elementsHidden = [allElements mutableCopy];
    
    [elementsHidden removeObjectsForKeys:elementsToShow];
    
    for (id element in elementsToShow) {
        UIControl *object = [allElements objectForKey:element];
        object.hidden = FALSE;
    }
    
    NSString *key;
    
    for (key in elementsHidden) {
        UIControl *object = [elementsHidden objectForKey:key];
        object.hidden = TRUE;
    }
}
@end