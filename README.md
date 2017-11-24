# EnglishPagesProj
1、创建的项目名称为EnglishPagesProj 
2、在根目录下创建basicInput.jsp，该页面包含四个文本输入框，2个label标签用于提示输入范围，一个提交按钮。如下图所示。
 
3、建立infoInput.jsp页面。如果在baisicInput.jsp页面中输入以下信息,点击提交按钮
 
则infoInput.jsp页面显示
 
其中，第一行显示用户+上一页输入的姓名+先生(如果性别为男)/女士(如果性别为女)+您好！
以下根据上一页面输入的数目自动生成，有2个文本输入框，则需要继续输入这两个文本输入框的中文标题，复选框的标题，有3个复选框项目，则需要分别输入每个项目的value值和显示的text文本
3、创建bean.TranslatorBean类，包含三个成员变量，chineseWord表示输入的中文，englishWord表示对应翻译的英文,data存储中文及对应英文的翻译，还需要创建构造方法和对应属性的get/set方法。如果设置chineseWord为”姓名”,则获取englishWord属性值为”name”，如果data中没有对应的chineseWord，则englishWordd的值为chineseWord+”的英文” ，data中存储的信息如下图：
 
4、创建englishPage.jsp页面，依据infoInput.jsp页面输入的中文信息，调用TranslatorBean对象获取对应的英文翻译并显示在页面上。比如infoInput.jsp中输入以下信息：
 
则点击”生成英文界面”按钮后，显示englishPage.jsp如下图所示：
 
