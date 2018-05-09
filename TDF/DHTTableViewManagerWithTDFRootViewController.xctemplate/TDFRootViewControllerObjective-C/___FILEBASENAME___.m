//___FILEHEADER___

#import "___FILEBASENAME___.h"
/*ViewController*/

/*View&&Util*/
#import "DHTTableViewManager+Helper.h"
/*model*/

/*NetWork InterFace*/

/*Vender*/

@interface ___FILEBASENAMEASIDENTIFIER___ ()<DHTTableViewManagerDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) DHTTableViewManager *tableViewManager;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___
#pragma mark - View Controller LifeCyle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - Initial Methods

#pragma mark - NetWork InterFace 

#pragma mark - Privater Methods

#pragma mark - Setter&&Getter Methods

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _tableView.backgroundColor = [UIColor clearColor];//depends your need change this color (TDF_THEME_BACKGROUNDCOLOR||white)
        _tableView.showsHorizontalScrollIndicator = NO;
        _tableView.showsVerticalScrollIndicator = NO;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _tableView;
}

- (DHTTableViewManager *)tableViewManager {
    if (!_tableViewManager) {
        _tableViewManager = [[DHTTableViewManager alloc] initWithTableView:self.tableView];
        [_tableViewManager registerItems:@[<#S(item)#>]];
        _tableViewManager.delegate = self;
    }
    return _tableViewManager;
}


@end
