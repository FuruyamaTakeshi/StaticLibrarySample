//
//  CustomVIew.m
//  SampleVIew
//
//  Created by 古山 健司 on 2013/12/24.
//  Copyright (c) 2013年 古山 健司. All rights reserved.
//

#import "CustomView.h"
@interface CustomView ()
@property (weak, nonatomic) IBOutlet UIButton *button;
@end
@implementation CustomView

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self){
        //xib ファイルのトップレベルオブジェクトを格納した array を返す

    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        NSArray *topLevelViews = [[NSBundle mainBundle] loadNibNamed:@"CustomView"
                                                               owner:self
                                                             options:nil];
        UIView* customizedView2 = topLevelViews[0];
        [self addSubview:customizedView2];
    }
    return self;
}
- (IBAction)buttonDidPush:(id)sender {
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
