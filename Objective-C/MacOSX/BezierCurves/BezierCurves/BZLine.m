//
//  BZLine.m
//  BezierCurves
//
//  Created by Dimitrios Vlastaras on 1/14/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "BZLine.h"

#define RESOLUTION 25

@implementation BZLine

-(CGPoint)between:(CGPoint)point1 and:(CGPoint)point2 now:(double)now
{
    double t = (sin(now/2)+1)/2;
    return ccp(point1.x+(point2.x-point1.x)*t, point1.y+(point2.y-point1.y)*t);
}

-(void)draw
{
    double now = CFAbsoluteTimeGetCurrent()/2;
 
    double animx = sin(now)*30;
    double animy = sin(now)*10;
    
    CGPoint point1 = ccp(-150.0+animx, -75.0-animy*10);
    CGPoint point2 = ccp(-50.0-animx, 0.0+animy*18);
    CGPoint point3 = ccp(50.0+animx, 75.0-animy);
    CGPoint point4 = ccp(150.0+animx, -75.0-animy*10);
    
    CGPoint point12 = [self between:point1 and:point2 now:now];
    CGPoint point23 = [self between:point2 and:point3 now:now];
    CGPoint point34 = [self between:point3 and:point4 now:now];
    
    CGPoint point1223 = [self between:point12 and:point23 now:now];
    CGPoint point2334 = [self between:point23 and:point34 now:now];
    
    CGPoint point12232334 = [self between:point1223 and:point2334 now:now];
    
    glColor4f(0.2, 1.0, 0.2, 1.0);
    glLineWidth(6.0f);
    ccDrawCubicBezier(point1, point2, point3, point4, RESOLUTION*2);

    
    glColor4f(0.5f, 0.5f, 1.0f, 1.0f);
    glLineWidth(2.0f);
    ccDrawLine(point1, point2);
    ccDrawLine(point2, point3);
    ccDrawLine(point3, point4);
    
    glColor4f(0.5f, 1.0f, 1.0f, 1.0f);
    glLineWidth(2.0f);
    ccDrawLine(point12, point23);
    ccDrawLine(point23, point34);
    
    glColor4f(1.5f, 1.0f, 1.0f, 1.0f);
    glLineWidth(2.0f);
    ccDrawLine(point1223, point2334);
    
    
    glColor4f(1.0f, 0.0f, 0.0f, 1.0f);
    glLineWidth(2.0f);
    ccDrawCircle(point1, 5.0f, 0.0f, RESOLUTION, NO);
    ccDrawCircle(point2, 5.0f, 0.0f, RESOLUTION, NO);
    ccDrawCircle(point3, 5.0f, 0.0f, RESOLUTION, NO);
    ccDrawCircle(point4, 5.0f, 0.0f, RESOLUTION, NO);
    ccDrawCircle(point12, 5.0f, 0.0f, RESOLUTION, NO);
    ccDrawCircle(point23, 5.0f, 0.0f, RESOLUTION, NO);
    ccDrawCircle(point34, 5.0f, 0.0f, RESOLUTION, NO);
    ccDrawCircle(point1223, 5.0f, 0.0f, RESOLUTION, NO);
    ccDrawCircle(point2334, 5.0f, 0.0f, RESOLUTION, NO);
    ccDrawCircle(point12232334, 5.0f, 0.0f, RESOLUTION, NO);
}

@end
