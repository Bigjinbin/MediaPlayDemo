//
//  ViewController.m
//  MediaPlayDemo
//
//  Created by jb on 15/7/22.
//  Copyright (c) 2015年 jb. All rights reserved.
//
#import <MediaPlayer/MediaPlayer.h>
#import "ViewController.h"
#import "JBQuickControl.h"

@interface ViewController ()

@property(nonatomic,strong)MPMoviePlayerController *playController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //（1）本地视频播放
    //（2）在线MP4视频播放
    //（3）在线流媒体m3u8视频播放
    //m3u8一种文件格式，把一个大的视频文件分割成一个个小的视频文件（比如100分钟的，每10秒一份）按时间来分割的；优势：想看哪的视频，就下载相应的视频，加载速度快，只需要下载相应的小文件；
    //（4）播放控制器和播放视图控制器
    
    __weak typeof(self)wkSelf =self;
    
    [self.view addSystemButtonWithFram:CGRectMake(100, 100, 100, 30) title:@"播放" action:^(JbButton *btn) {
        
        NSString *path =
        [[NSBundle mainBundle]pathForResource:@"dzs" ofType:@"mp4"];
        
        MPMoviePlayerViewController *player =
        [[MPMoviePlayerViewController alloc]initWithContentURL:[NSURL fileURLWithPath:path]];
        player.moviePlayer.movieSourceType = MPMovieSourceTypeFile;
        
        [wkSelf presentViewController:player animated:YES completion:nil];

        
    }];
    
    [self.view addSystemButtonWithFram:CGRectMake(100, 150, 100, 30) title:@"播放网络mp4" action:^(JbButton *btn) {
        
        NSString *path =@"http://163.177.1.77/youku/6572160079E33823C2E81131C9/0300080500559E76C6022E087AC0921D3DD4FA-29C8-E4BC-8454-82959C051CDC.mp4";
        
        MPMoviePlayerViewController *player =
        [[MPMoviePlayerViewController alloc]initWithContentURL:[NSURL URLWithString:path]];
       
        [wkSelf presentViewController:player animated:YES completion:nil];
        
    }];
    
    [self.view addSystemButtonWithFram:CGRectMake(100, 200, 100, 30) title:@"播放网络m3u8" action:^(JbButton *btn) {
        
        NSString *path =@"http://219.232.160.141:5080/hls/c64024e7cd451ac19613345704f985fa.m3u8";
        
        MPMoviePlayerViewController *player =
        [[MPMoviePlayerViewController alloc]initWithContentURL:[NSURL URLWithString:path]];
      
        [wkSelf presentViewController:player animated:YES completion:nil];
        
        
    }];
    
    [self.view addSystemButtonWithFram:CGRectMake(100, 250, 100, 30) title:@"播放控制器mp4" action:^(JbButton *btn) {
        
        NSString *path =@"http://219.232.160.141:5080/hls/c64024e7cd451ac19613345704f985fa.m3u8";
        
        wkSelf.playController = [[MPMoviePlayerController alloc]initWithContentURL:[NSURL URLWithString:path]];
        wkSelf.playController.view.frame = CGRectMake(10, 200, 300, 300);
        
        [wkSelf.view addSubview:wkSelf.playController.view];
        
        [wkSelf.playController prepareToPlay];
        
        [wkSelf.playController play];
        
    }];

    
  
        // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
