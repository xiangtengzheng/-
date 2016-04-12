//
//  CommentsController.m
//  评论
//
//  Created by ZhengXiangteng on 16/4/5.
//  Copyright © 2016年 前辈丶. All rights reserved.
//
#define Main_HEIGHT [[UIScreen mainScreen] bounds].size.height
#define Main_WIDTH [[UIScreen mainScreen] bounds].size.width

#import "CommentsController.h"
#import "CommentsCell.h"
#import "ZLPhotoPickerBrowserViewController.h"

@interface CommentsController ()<UITableViewDelegate,UITableViewDataSource,CommentsCellDelegate>
@property (nonatomic,strong)UITableView *tableView;
/** 数据源数组 */
@property (nonatomic, strong) NSMutableArray *array;
@end

@implementation CommentsController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Comment *comment = [[Comment alloc]init];
    comment.avatar = @"";
    comment.nickname = @"太有现代感了";
    comment.createtime = @"2016年04月115日";
    comment.content = @"太有现代感了太有现代感代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代了太有现代感了太有现代感了太有现代感了";
    comment.toContent = @"代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代代感了太有现代感了太有现代";
    comment.url = @[@"http://pic2.ooopic.com/01/03/51/25b1OOOPIC19.jpg",
                    @"http://imgsrc.baidu.com/forum/w%3D580/sign=67ef9ea341166d223877159c76230945/e2f7f736afc3793138419f41e9c4b74543a911b7.jpg",
                    @"http://c.hiphotos.baidu.com/zhidao/wh%3D600%2C800/sign=28bb1860b17eca80125031e1a113bbe5/7af40ad162d9f2d3cd869aaca8ec8a136227ccda.jpg",@"http://pic2.ooopic.com/01/03/51/25b1OOOPIC19.jpg",
                    @"http://imgsrc.baidu.com/forum/w%3D580/sign=67ef9ea341166d223877159c76230945/e2f7f736afc3793138419f41e9c4b74543a911b7.jpg",
                    @"http://c.hiphotos.baidu.com/zhidao/wh%3D600%2C800/sign=28bb1860b17eca80125031e1a113bbe5/7af40ad162d9f2d3cd869aaca8ec8a136227ccda.jpg",@"http://pic2.ooopic.com/01/03/51/25b1OOOPIC19.jpg",
                    @"http://imgsrc.baidu.com/forum/w%3D580/sign=67ef9ea341166d223877159c76230945/e2f7f736afc3793138419f41e9c4b74543a911b7.jpg",
                    @"http://c.hiphotos.baidu.com/zhidao/wh%3D600%2C800/sign=28bb1860b17eca80125031e1a113bbe5/7af40ad162d9f2d3cd869aaca8ec8a136227ccda.jpg"];
    
    Comment *comment1 = [[Comment alloc]init];
    comment1.avatar = @"";
    comment1.nickname = @"太有现代感了";
    comment1.createtime = @"2016年04月05日";
    comment1.content = @"太有现代感了太有现代感了太有现代感了太有现代感了太有现代感了";
    comment1.toContent = @"太有现代感了太有现代感了太有现代感了太有现代感了太有现代感了太有现代感了太有现代感了太有现";
    comment1.url = @[@"http://pic2.ooopic.com/01/03/51/25b1OOOPIC19.jpg",
                     @"http://c.hiphotos.baidu.com/zhidao/wh%3D600%2C800/sign=28bb1860b17eca80125031e1a113bbe5/7af40ad162d9f2d3cd869aaca8ec8a136227ccda.jpg",
                     @"http://pic2.ooopic.com/01/03/51/25b1OOOPIC19.jpg",
                     @"http://img4.duitang.com/uploads/item/201407/28/20140728130314_SnSZ2.png",
                     @"http://pic2.ooopic.com/01/03/51/25b1OOOPIC19.jpg",
                     @"http://pic2.ooopic.com/01/03/51/25b1OOOPIC19.jpg",
                     @"http://pic2.ooopic.com/01/03/51/25b1OOOPIC19.jpg"];
    
    Comment *comment2 = [[Comment alloc]init];
    comment2.avatar = @"";
    comment2.nickname = @"太有现代感了";
    comment2.createtime = @"2016年04月05日";
    comment2.content = @"太有现代感了太有现代感了太有现代感了太有现代感了太有现代感了";
    comment2.toContent = @"太有现代感";
    comment2.url = @[@"http://pic2.ooopic.com/01/03/51/25b1OOOPIC19.jpg",
                     @"http://pic2.ooopic.com/01/03/51/25b1OOOPIC19.jpg",
                     @"http://pic2.ooopic.com/01/03/51/25b1OOOPIC19.jpg",
                     @"http://img4.duitang.com/uploads/item/201407/28/20140728130314_SnSZ2.png"];
    
    Comment *comment3 = [[Comment alloc]init];
    comment3.avatar = @"";
    comment3.nickname = @"太有现代感了";
    comment3.createtime = @"2016年04月05日";
    comment3.content = @"太有现代感了太有现代感了太有现代感了太有现代感了太有现代感了";
    comment3.toContent = @"哇水电费哇水电费哇水电费";
    comment3.url = @[@"http://pic2.ooopic.com/01/03/51/25b1OOOPIC19.jpg"];
    
    Comment *comment4 = [[Comment alloc]init];
    comment4.avatar = @"";
    comment4.nickname = @"太有现代感了";
    comment4.createtime = @"2016年04月15日";
    comment4.content = @"太有现代感了太有现代感了太有现代感了太有现代感了太有现代感了";
    comment4.toContent = @"";
    comment4.url = @[@"http://pic2.ooopic.com/01/03/51/25b1OOOPIC19.jpg",
                     @"http://img4.duitang.com/uploads/item/201407/28/20140728130314_SnSZ2.png",
                     @"http://pic2.ooopic.com/01/03/51/25b1OOOPIC19.jpg"];

    Comment *comment5 = [[Comment alloc]init];
    comment5.avatar = @"";
    comment5.nickname = @"太有现代感了";
    comment5.createtime = @"2016年04月15日";
    comment5.content = @"太有现代感了太有现代感了太有现代感了太有现代感了太有现代感了";
    comment5.toContent = @"卡阿斯蒂芬";
    comment5.url = @[];

    Comment *comment6 = [[Comment alloc]init];
    comment6.avatar = @"";
    comment6.nickname = @"太有现代感了";
    comment6.createtime = @"2016年04月25日";
    comment6.content = @"太有现代感了太有现代感了太有现代感了太有现代感了太有现代感了";
    comment6.toContent = @"";
    comment6.url = @[];

    self.array = [NSMutableArray array];
    [self.array addObject:comment];
    [self.array addObject:comment1];
    [self.array addObject:comment2];
    [self.array addObject:comment3];
    [self.array addObject:comment4];
    [self.array addObject:comment5];
    [self.array addObject:comment6];
    
    [self initTabelView];

}
- (void)initTabelView{
    
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, Main_WIDTH, Main_HEIGHT) style:UITableViewStylePlain];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;

    [self.view addSubview:self.tableView];
    
}
#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CommentsCell *cell = [CommentsCell cellWithTableView:tableView];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.delegate = self;
    Comment *comment = self.array[indexPath.row];
    cell.comment = comment;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Comment *comment = self.array[indexPath.row];
    
    NSLog(@"%f",comment.cellHight);
    
    return comment.cellHight;
    
}

/**
 * 返回每一行的估计高度
 * 只要返回了估计高度，那么就会先调用tableView:cellForRowAtIndexPath:方法创建cell，再调用tableView:heightForRowAtIndexPath:方法获取cell的真实高度
 */

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 300;
}

#pragma mark -- TableViewCell Delegate 点击照片放大--
- (void)commentsCellsearcimage:(UIButton *)button{

    UITableViewCell * cell = (UITableViewCell *)[[[button superview] superview]superview];
    NSIndexPath * path = [self.tableView indexPathForCell:cell];
    Comment *comment = self.array[path.row];
    
    
    NSMutableArray * bigImgArray = [NSMutableArray new];
    for (int i = 0; i < comment.url.count; i++) {
        ZLPhotoPickerBrowserPhoto *photo = [[ZLPhotoPickerBrowserPhoto alloc] init];
        photo.photoURL = [NSURL URLWithString:comment.url[i]];
        [bigImgArray addObject:photo];
    }
    // 图片游览器
    ZLPhotoPickerBrowserViewController *pickerBrowser = [[ZLPhotoPickerBrowserViewController alloc] init];
    // 淡入淡出效果
     pickerBrowser.status = UIViewAnimationAnimationStatusFade;
    // 数据源/delegate
//    pickerBrowser.editing = YES;
    pickerBrowser.photos = bigImgArray;
    // 能够删除
//    pickerBrowser.delegate = self;
    // 当前选中的值
    pickerBrowser.currentIndex = (int)(long)button.tag - 1000;
    // 展示控制器
    [pickerBrowser showPickerVc:self];
}


@end
