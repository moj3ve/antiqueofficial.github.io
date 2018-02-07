#import "Bits.h"



%hook SCBottomBorderedView
-(void) layoutSubviews {
      %orig;
[self setBackgroundColor:[UIColor blackColor]];
}

-(void) setBackgroundColor:(UIColor *)arg1 {
      %orig([UIColor blackColor]);
}
%end

%hook SCCameraTimer
-(void) layoutSubviews {
      %orig;
[self setBackgroundColor:[UIColor clearColor]];
}

-(void) setBackgroundColor:(UIColor *)arg1 {
      %orig([UIColor clearColor]);
}
%end

%hook SCCheetahFeedComponentView
-(void) layoutSubviews {
      %orig;
[self setBackgroundColor:[UIColor blackColor]];

UILabel *mainLabel = [self valueForKey:@"_mainLabel"];
[mainLabel setTextColor:[UIColor whiteColor]];
}

-(void) setBackgroundColor:(UIColor *)arg1 {
      %orig([UIColor blackColor]);
}
%end

%hook SCContactsCTAFooterView
-(void) layoutSubviews {
      %orig;
[self setBackgroundColor:[UIColor blackColor]];

UILabel *textLabel = [self valueForKey:@"_textLabel"];
[textLabel setBackgroundColor:[UIColor blackColor]];
}

-(void) setBackgroundColor:(UIColor *)arg1 {
      %orig([UIColor blackColor]);
}
%end

%hook SCGradientView
-(void) layoutSubviews {
      [self removeFromSuperview];
}
%end

%hook SCHovaTabBarView
-(void) layoutSubviews {
      %orig;
[self setBackgroundColor:[UIColor clearColor]];

UIView *backgroundView = [self valueForKey:@"_backgroundView"];
[backgroundView removeFromSuperview];
}

-(void) setBackgroundColor:(UIColor *)arg1 {
      %orig([UIColor clearColor]);
}
%end

%hook SCHovaTabBarItemView
-(void) layoutSubviews {
      %orig;
[self setBackgroundColor:[UIColor clearColor]];
}

-(void) setBackgroundColor:(UIColor *)arg1 {
      %orig([UIColor clearColor]);
}
%end

%hook SCSettingsTableViewCell
-(void) setBackgroundColor:(UIColor *)arg1 {
      %orig([UIColor blackColor]);
}
%end





%hook UICollectionView
-(void) setBackgroundColor:(UIColor *)arg1 {
      %orig([UIColor blackColor]);
}
%end

%hook UITableView
-(void) setBackgroundColor:(UIColor *)arg1 {
      %orig([UIColor blackColor]);
}
%end

%hook UITableViewLabel
-(void) setTextColor:(UIColor *)arg1 {
      %orig([UIColor whiteColor]);
}
%end