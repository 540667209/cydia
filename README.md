#添加一个工程步骤

#添加.deb 文件到 debs文件夹


##项目详细描述页面
在`depictions`文件夹中创建一个名为项目ID的文件夹创建两个XML文件:`info.xml``和changelog.xml`.

`info.xml`.
```xml
<package>
    <id>com.Nrepo.Nicon项目ID</id>
    <name>Nicon工程名</name>
    <version>1.0.4当前版本号</version>
    <compatibility>
        <firmware>
      <miniOS>7.0最小支持系统</miniOS>
      <maxiOS>9.0+最大支持系统</maxiOS>
            <otherVersions>unsupported其他系统</otherVersions>
            <!--
            for otherVersions, you can put either unsupported or unconfirmed
            -->
        </firmware>
    </compatibility>
    <dependencies></dependencies>
    <descriptionlist>
        <description>This adds icons to the Sections.描述</description>
    </descriptionlist>
    <screenshots></screenshots>
    <changelog>
        <change>Initial release更新日志</change>
    </changelog>
    <links></links>
</package>

```

`changelog.xml`.

```xml
<changelog>
    <changes>
        <version>1.0.0-1版本号</version>
        <change>Initial release版本号注释</change>
    </changes>
</changelog>
```
git push



项目的control 文件中 

    Depiction: https://username.github.io/repo/depictions/?p=[idhere]
    [idhere] with your actual package id.

    Depiction:https://username.github.io/depictions/?p=com.Nrepo.Nicon



DEBIAN文件中的control

Package: net.yifeiyang.MyProgram
Name: MyProgram
Version: 1.0.4-1
Architecture: iphoneos-arm
Description: test text.
Homepage: http://www.yifeiyang.net
Maintainer: YIFEIYANG <kane_yj@hotmail.com>
Author: YIFEIYANG <kane_yj@hotmail.com>
Section: Games


Package 唯一标示Package的名称，一般用「域名.Package名」
Name    程序的名称
Version 程序版本，不能使用字母
Architecture    固定为iphoneos-arm
Description 程序概要说明，将显示在Cydia的说明页内
Homepage    程序网页
Maintainer  维护者名称，邮箱
Author  作者，邮箱
Section 所属类型，设定了之后，程序名旁边将显示具体的icon


每次追加新的deb文件，或者是deb文件有更新时，需要做下面两步

dpkg-scanpackages –m . /dev/null >Packages
bzip2 Packages
OK了，接下来我们就可以把Packages.bz2和MyProgram.deb这两个文件上传到你的web服务器中，然后把地址作为Source添加到Cydia中就搞定了。如果没有web服务器也没有关系，可以使用Dropbox等共享网盘，得到唯一的一个URL即可。

