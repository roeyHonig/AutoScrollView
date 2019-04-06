//
//  ScrollTableViewCell.h
//  AutoScrollView
//
//  Created by Rotem walzer on 6.4.2019.
//  Copyright © 2019 Rotem walzer. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScrollTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;


@end

NS_ASSUME_NONNULL_END
