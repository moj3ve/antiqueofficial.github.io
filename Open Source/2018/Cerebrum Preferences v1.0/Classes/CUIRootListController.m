#include "CUIRootListController.h"



@protocol PreferencesTableCustomView
- (id)initWithSpecifier:(id)arg1;

@optional
- (CGFloat)preferredHeightForWidth:(CGFloat)arg1;
- (CGFloat)preferredHeightForWidth:(CGFloat)arg1 inTableView:(id)arg2;
@end



@interface HeaderCustomCell : UITableViewCell <PreferencesTableCustomView> {
    UIView *containerView;
    UIImageView *iconImageView;
    UILabel *titleLabel;
    UILabel *subtitleLabel;
}
@end


@interface UserCustomCell : UITableViewCell <PreferencesTableCustomView> {
    UIView *containerView;
    UIImageView *iconImageView;
    UILabel *titleLabel;
    UILabel *subtitleLabel;
    UIButton *githubButton;
    UIButton *twitterButton;
}
@end



@implementation HeaderCustomCell
-(id) initWithSpecifier:(PSSpecifier *)specifier {
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    if(self) {
#define kWidth [[UIApplication sharedApplication] keyWindow].frame.size.width;

[self setSeparatorColor:[UIColor lightGrayColor]];

// All code from now on goes below this >>>
containerView = [[UIView alloc] initWithFrame:CGRectMake(16, 8, 56, 56)];
[containerView setBackgroundColor:[UIColor colorWithWhite:1.0 alpha:0.5]];
[containerView.layer setMasksToBounds:NO];
[containerView.layer setCornerRadius:56 / 2];
[containerView.layer setShadowColor:[UIColor blackColor].CGColor];
[containerView.layer setShadowOffset:CGSizeMake(0, 0)];
[containerView.layer setShadowRadius:5];
[containerView.layer setShadowOpacity:0.28];
[self addSubview:containerView];

iconImageView = [[UIImageView alloc] initWithFrame:containerView.bounds];
[iconImageView setBackgroundColor:[UIColor whiteColor]];
[iconImageView setClipsToBounds:YES];
[iconImageView.layer setCornerRadius:56 / 2];
[iconImageView setImage:[UIImage imageWithContentsOfFile:@"/Library/PreferenceBundles/Cerebrum.bundle/header@2x.png"]];
[containerView addSubview:iconImageView];


titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(80, 8, [[UIApplication sharedApplication] keyWindow].frame.size.width - 128, 56)];
[titleLabel setTextColor:[UIColor blackColor]];
[titleLabel setTextAlignment:NSTextAlignmentLeft];
[titleLabel setFont:[UIFont systemFontOfSize:35 weight:UIFontWeightMedium]];
[titleLabel setText:@"Cerebrum"];
[self addSubview:titleLabel];

/*
subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(112, 62, 96, 15)];
[subtitleLabel setTextColor:[UIColor darkGrayColor]];
[subtitleLabel setTextAlignment:NSTextAlignmentLeft];
[subtitleLabel setFont:[UIFont systemFontOfSize:10 weight:UIFontWeightMedium]];
[subtitleLabel setText:@"Concept to Reality"];
[self addSubview:subtitleLabel];
*/
    } return self;
}

-(CGFloat) preferredHeightForWidth:(CGFloat)arg1 {
      return 72;
}
@end


@implementation UserCustomCell
-(id) initWithSpecifier:(PSSpecifier *)specifier {
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    if(self) {
#define kWidth [[UIApplication sharedApplication] keyWindow].frame.size.width;

[self setSeparatorColor:[UIColor lightGrayColor]];


// All code from now on goes below this >>>
containerView = [[UIView alloc] initWithFrame:CGRectMake(16, 8, 56, 56)];
[containerView setBackgroundColor:[UIColor colorWithWhite:1.0 alpha:0.5]];
[containerView.layer setMasksToBounds:NO];
[containerView.layer setCornerRadius:56 / 2];
[containerView.layer setShadowColor:[UIColor blackColor].CGColor];
[containerView.layer setShadowOffset:CGSizeMake(0, 0)];
[containerView.layer setShadowRadius:5];
[containerView.layer setShadowOpacity:0.28];
[self addSubview:containerView];

iconImageView = [[UIImageView alloc] initWithFrame:containerView.bounds];
[iconImageView setBackgroundColor:[UIColor whiteColor]];
[iconImageView setClipsToBounds:YES];
[iconImageView.layer setCornerRadius:56 / 2];
[iconImageView setImage:[UIImage imageWithContentsOfFile:@"/Library/PreferenceBundles/Cerebrum.bundle/antique@2x.png"]];
[containerView addSubview:iconImageView];


titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(80, 8, [[UIApplication sharedApplication] keyWindow].frame.size.width - 128, 56)];
[titleLabel setTextColor:[UIColor blackColor]];
[titleLabel setTextAlignment:NSTextAlignmentLeft];
[titleLabel setFont:[UIFont systemFontOfSize:35 weight:UIFontWeightMedium]];
[titleLabel setText:@"Antique"];
[self addSubview:titleLabel];



githubButton = [UIButton buttonWithType:UIButtonTypeCustom];
[githubButton setFrame:CGRectMake([[UIApplication sharedApplication] keyWindow].frame.size.width - 72, 24, 24, 24)];
[githubButton addTarget:self action:@selector(openGithub:) forControlEvents:UIControlEventTouchUpInside];
[githubButton setImage:[UIImage imageWithContentsOfFile:@"/var/mobile/Media/Cerebrum.bundle/github@2x.png"] forState:UIControlStateNormal];
//[githubButton setImageEdgeInsets:UIEdgeInsetsMake(8, 8, 8, 8)];
[githubButton setClipsToBounds:YES];
[githubButton.layer setCornerRadius:8];
[self addSubview:githubButton];

twitterButton = [UIButton buttonWithType:UIButtonTypeCustom];
[twitterButton setFrame:CGRectMake([[UIApplication sharedApplication] keyWindow].frame.size.width - 40, 24, 24, 24)];
[twitterButton addTarget:self action:@selector(openTwitter:) forControlEvents:UIControlEventTouchUpInside];
[twitterButton setImage:[UIImage imageWithContentsOfFile:@"/var/mobile/Media/Cerebrum.bundle/twitter@2x.png"] forState:UIControlStateNormal];
//[twitterButton setImageEdgeInsets:UIEdgeInsetsMake(8, 8, 8, 8)];
[twitterButton setClipsToBounds:YES];
[twitterButton.layer setCornerRadius:8];
[self addSubview:twitterButton];
    } return self;
}

-(void) openTwitter:(UIButton *)sender {
      [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://mobile.twitter.com/Antique_Dev"]];
}

-(void) openGithub:(UIButton *)sender {
      [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://github.com/antiquebeta/"]];
}

-(CGFloat) preferredHeightForWidth:(CGFloat)arg1 {
      return 72;
}
@end



@implementation CUIRootListController
-(NSArray *) specifiers {
	if(!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	} return _specifiers;
}

-(void) loadView {
      [super loadView];
[UISwitch appearanceWhenContainedIn:self.class, nil].onTintColor = [UIColor colorWithRed:174/255.0f green:93/255.0f blue:188/255.0f alpha:1.0];

[UISegmentedControl appearanceWhenContainedIn:self.class, nil].tintColor = [UIColor colorWithRed:174/255.0f green:93/255.0f blue:188/255.0f alpha:1.0];
}
@end