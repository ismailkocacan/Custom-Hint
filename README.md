Custom Hint
===========

Nesnelerin Hint özelliğini nasıl özelleştirebileceğinizi gösteren örnektir.

Öncelikle nesnenin Hint özelliğini özelleştirebilmemiz için **CM_HINTSHOW** mesajını yakalayıp,mesaj içerisinde gelen
**Message.HintInfo.HintWindowClass** değişkenine özelleştirdiğimiz custom hint(TExHint) sınıfını set etmemiz lazım.

O sebeble bu örnekte olduğu gibi **TButton** sınıfından miras almış **TCustomHintButton** sınıfı içersinde gelen windows mesajını CMHintShow methodu içersinde handle edip,özelleştirdiğimiz custom hint(TExHint) sınıfı set ediyoruz.

Fakat butonlar UnitMain içersinde aşağıdaki tanımlamış;

    TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;


Yukarıdaki tanımı aşağıdaki gibi Hem pas dosyasında hemde dfm dosyasında ki nesne tanımda değiştirsek büyük ihtimalle sorun çözülecek...

    TForm1 = class(TForm)
    Button1: TCustomHintButton;
    Button2: TButton;

Değişiklikleri hem pas hemde de dfm dosyasında yaptığımızda ise delphi designerı Button1 nesnesini tanımıyor.
Ama bir şekilde Button1 nesnesinin tipini TCustomHintButton yapmalıyım ki,gelen hint mesajını yakayalayabilsin !

Madem ki tasarım anında Button1 nesnenin tipini değiştiremiyorum !
O zaman Run-Time değiştiririm amma nasıl ?

PatchInstanceClass methodu ile sadece Button1 instance'ının tipini,TCustomHintButton olarak değiştirdiğimde mesajları yakayalabiliyor hale geliyor.

**PatchInstanceClass(Button1,TCustomHintButton);** methodu ile "nesnenin" Run-Time'da miras aldığı sınıfı değiştiriliyor.


TCustomHintButton sınıfı zaten TButton sınıfından miras aldığı için,TButton sınıfının tüm özelliklerine sahip ve artı olarak birde Custom Hint gösterebiliyor.

**Yani burda öğreneceğiniz bir şey var aslında !!!**

Mevcut bir nesnenin üzerinde herhangi bir düzenleme/değiştirme yapmadan run-time da miras aldırarak yeni özellikler ekleyebilmek kavramı....



Demo 
===========
![ScreenShot](/Test/buttons.gif)
