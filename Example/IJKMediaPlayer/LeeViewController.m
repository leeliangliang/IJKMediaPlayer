//
//  LeeViewController.m
//  IJKMediaPlayer
//
//  Created by 李亮 on 04/16/2019.
//  Copyright (c) 2019 李亮. All rights reserved.
//

#import "LeeViewController.h"
#import <IJKMediaFramework/IJKMediaFramework.h>
@interface LeeViewController ()
@property(atomic, retain) id<IJKMediaPlayback> player;

@end

@implementation LeeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSURL *url = [NSURL URLWithString:@"http://cc.live.dianshimo.com/dsj-tv-live/beijing.m3u8"];
    [IJKFFMoviePlayerController setLogLevel:k_IJK_LOG_INFO];
    [IJKFFMoviePlayerController setLogReport:NO];
    IJKFFOptions *options = [IJKFFOptions optionsByDefault];
    self.player = [[IJKFFMoviePlayerController alloc] initWithContentURL:url withOptions:options];
    self.player.view.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    self.player.view.frame = self.view.bounds;
    self.player.scalingMode = IJKMPMovieScalingModeAspectFit;
    self.player.shouldAutoplay = YES;
    
    self.view.autoresizesSubviews = YES;
    [self.view addSubview:self.player.view];
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.player prepareToPlay];
    [self performSelector:@selector(play) withObject:nil afterDelay:2];
}
- (void)play
{
    [self.player play];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
