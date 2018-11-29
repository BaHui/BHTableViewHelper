### 简介
> **由于业务所需, 在同一个界面中, 可能会同时出现多个 `tableView` 或者多个 `collectionView` , 势必要实现其数据源和代理方法. 若是将当前的 `viewController` 设置为代理对象, 那么其实现的代理方法中就要去不断地去区分当前的被代理者是哪一个 `tableView` , 接下来, 我们就将其数据源和代理方法进行剥离, 减轻viewController的负担.**

### 方案思路
> **转移代理, 创建独立的代理对象**

### 实现
1.创建 `FirstTableViewHelper` 和 `SecondTableViewHelper`的NSObject类
2.分别设置其为 `tableView` 的代理对象
    即: 
```objectivec
- (void)initTableViewHelpers {
  self.firstTableViewHelper = [BHFirstTableViewHelper new];
  self.secondTableViewHelper = [BHSecondTableViewHelper new];
}

- (void)configureTableView {
  self.firstTableView.delegate = self.firstTableViewHelper;
  self.firstTableView.dataSource = self.firstTableViewHelper;

  self.secondTableView.delegate = self.secondTableViewHelper;
  self.secondTableView.dataSource = self.secondTableViewHelper;
}
```

```objectivec
//   FirstTableViewHelper的处理
@implementation BHFirstTableViewHelper

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
   return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   BHExampleCell *exampleCell = [tableView dequeueReusableCellWithIdentifier:BHExampleCellReuseId forIndexPath:indexPath];
   [exampleCell updateCellWithContent:[NSString stringWithFormat:@"First TableView : row -> %ld", (long)indexPath.row]];

   return exampleCell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
   return 48.f;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
```

```objectivec
// SecondTableViewHelper的处理
@implementation BHSecondTableViewHelper

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
   return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return 7;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   BHExampleCell *exampleCell = [tableView dequeueReusableCellWithIdentifier:BHExampleCellReuseId forIndexPath:indexPath];
   [exampleCell updateCellWithContent:[NSString stringWithFormat:@"Second TableView : row -> %ld", (long)indexPath.row]];

   return exampleCell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
   return 55.f;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
```

3.这样, 我们就可以在各自的代理对象中实现其各自的代理方法

### 总结
> 合理的处理方式, 会使代码看起来更优雅, 更具备可读性.

### 交流与建议
- GitHub：<https://github.com/BaHui>
- 邮&nbsp;&nbsp;&nbsp; 箱：<qiaobahuiyouxiang@163.com>

