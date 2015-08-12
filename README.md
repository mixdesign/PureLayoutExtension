# PureLayoutExtension
The PureLayout framework extension classes.

####Example:
<img src="https://leto11g.storage.yandex.net/rdisk/34ef19d8f3aff19c232a19c13525fe9673a6c21245b55915bebba0593e87c3ce/inf/I4toGFsxei_S1N2kc9Gp4lhOKWdiTTK4Y6Xsce7E_tG13hvV3DHkmglIZH41tU_0-Sd6YDiKfUSCphzER_oU1g==?uid=0&filename=purelayout_image.jpg&disposition=inline&hash=&limit=0&content_type=image%2Fjpeg&tknv=v2&rtoken=876553fcd08c3e4d9acc94b407c85688&force_default=no&ycrid=na-9a6f71b9ebd08f2cc4f2e17bed950030-downloader1g"/>

####Code:
```objective-c
// Light gray container.
UIView *containerView = [UIView newAutoLayoutView];
containerView.backgroundColor = [UIColor lightGrayColor];
[self.view addSubview:containerView];
[containerView aa_superviewLeft:20];
[containerView aa_superviewRight:50];
[containerView aa_centerVertical];

// Black text label.
UILabel *textLabel = [UILabel newAutoLayoutView];
textLabel.backgroundColor = [UIColor clearColor];
textLabel.font = [UIFont systemFontOfSize:14];
textLabel.textColor = [UIColor blackColor];
textLabel.lineBreakMode = NSLineBreakByWordWrapping;
textLabel.numberOfLines = 0;
textLabel.text = @"Lorem Ipsum long text...";
[containerView addSubview:textLabel];

[textLabel aa_superviewTop:10];
[textLabel aa_superviewLeft:10];
[textLabel aa_superviewRight:10];

// Orange view
UIView *orangeView = [UIView newAutoLayoutView];
orangeView.backgroundColor = [UIColor orangeColor];
[orangeView aa_setWidth:150];
[orangeView aa_setHeight:50];
[containerView addSubview:orangeView];

[orangeView aa_left:textLabel];
[orangeView aa_pinUnderView:textLabel offset:20];
[orangeView aa_superviewBottom:5];
```
