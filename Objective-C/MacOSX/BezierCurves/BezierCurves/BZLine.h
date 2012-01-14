//
//  BZLine.h
//  BezierCurves
//
//  Created by Dimitrios Vlastaras on 1/14/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface BZLine : CCNode 

-(CGPoint)between:(CGPoint)point1 and:(CGPoint)point2 now:(double)now;

@end
