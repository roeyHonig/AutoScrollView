//
//  ViewController.m
//  AutoScrollView
//
//  Created by Rotem walzer on 6.4.2019.
//  Copyright © 2019 Rotem walzer. All rights reserved.
//

#import "ViewController.h"
#import "ScrollTableViewCell.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    ScrollTableViewCell *cell = (ScrollTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"scrollCell"];
    [cell setSelectionStyle: UITableViewCellSelectionStyleNone];
    [cell.myScrollView setContentOffset:CGPointMake(0, 0) animated:NO];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 16;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"selecting the cell");
    ScrollTableViewCell *cell = (ScrollTableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    UIScrollView *scrollView = cell.myScrollView;
    CGPoint trailingOffset = CGPointMake(scrollView.contentSize.width - scrollView.bounds.size.width + scrollView.contentInset.right ,0);
    
    [UIView animateWithDuration:10.0f delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        scrollView.contentOffset = trailingOffset;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:10.0f delay:1.0f options:UIViewAnimationOptionCurveLinear animations:^{
            scrollView.contentOffset = CGPointMake(0, 0);
        } completion:NULL];
    }];
    
}



@end
