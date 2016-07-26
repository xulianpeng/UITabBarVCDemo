# UITabBarVCDemoDemo总结
## 方法一:
很老实的写法,适合新手练习.给item设置选中和非选中状态下的图片 ,并设置显示原图. 基本满足一般的开发需要.

## 方法二:
是我在项目中的做法,当时不知道title的字体颜色也可以修改,所以直接显示一张图片 ,通过设置 imageInsert挤掉title的位置,此时还是两张图.
## 方法三:

```
self.tabBar.tintColor = [UIColor purpleColor];
//    self.tabBar.barTintColor = [UIColor purpleColor];//修改tabBar的背景色
```
通过这个方法可以直接改变选中时item的图片 和 title的颜色,所以在item选中前后的样式一样只是颜色改变时 ,可以采用此方法,故选中后的图片可以舍弃.
## 方法四
实现类似 简书 新浪微博那种 tabbar ,这个方法是要记住的,很有用.在tabbar的基础上自定义.
## 方法五
类似网易音乐 等可爱的tabBar
参考 CuteTabBarDemo.