#include  <stdio.h>
 
 int id01;
 char cd01;
 short int sd01;
 unsigned int uid01;
 unsigned char ucd01;
 unsigned short int usd01;
 float fd01;
 double dd01;
int main()
 {
    void func01(),func02(),func03(),func04(),func05(),func06();
    void func07(),func08();
    func01();
    func02();
    func03();
    func04();
    func05();
    func06();
    func07();
    func08();
 }
 void func01()
 {
      int  ia01,ia02,ia03,ia04,ia05;
#ifdef __STDC__
      void func011(int ia01,int ia02,int ia03,int ia04,int ia05);
#else
      void func011();
#endif
      ia01=1;
      ia02=2;
      ia03=3;
      ia04=4;
      ia05=5;
      func011(ia01,ia02,ia03,ia04,ia05);
      if(id01==1)
        printf("******* FUNC01 IA01            OK ****\n");
      else
        printf("******* FUNC01 IA01            NG ****\n");
      if(ia02==2)
        printf("******* FUNC01 IA02 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC01 IA05 REAL ARGUM NG ****\n");
      if(ia03==3)
        printf("******* FUNC01 IA03 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC01 IA03 REAL ARGUM NG ****\n");
      if(ia05==5)
        printf("******* FUNC01 IA05 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC01 IA05 REAL ARGUM NG ****\n");
 }
#ifdef __STDC__
void func011(int ib01,int ib02,int ib03,int ib04,int ib05)
#else
void func011(ib01,ib02,ib03,ib04,ib05)
int ib01,ib02,ib03,ib04,ib05;
#endif
 {
#ifdef __STDC__
      void func0111(int ib04);
#else
      void func0111();
#endif
      int ic01,ic02;
      ic01=ib03;
      ib05=10;
      ib02=ib01+ic01;
      func0111(ib04);
      ib03=ic01+2;
      ic02=ib05;
      id01=ib01;
      if(ic02==10)
        printf("******* FUNC011 IB05 CHECK     OK ****\n");
      else
        printf("******* FUNC011 IB05 CHECK     NG ****\n");
 }
#ifdef __STDC__
void func0111(int ie04)
#else
void func0111(ie04)
int ie04;
#endif
 {
      ie04=ie04+10;
      return;
 }
 void func02()
 {
      char ca01,ca02,ca03,ca04,ca05;
#ifdef __STDC__
      void func021(char ca01,char ca02,char ca03,char ca04,char ca05);
#else
      void func021();
#endif
      ca01='a';
      ca02='b';
      ca03='c';
      ca04='d';
      ca05='e';
      func021(ca01,ca02,ca03,ca04,ca05);
      if(cd01=='a')
        printf("******* FUNC02 CA01            OK ****\n");
      else
        printf("******* FUNC02 CA01            NG ****\n");
      if(ca02=='b')
        printf("******* FUNC02 CA02 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC02 CA02 REAL ARGUM NG ****\n");
      if(ca03=='c')
        printf("******* FUNC02 CA03 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC02 CA03 REAL ARGUM NG ****\n");
      if(ca05=='e')
        printf("******* FUNC02 CA05 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC02 CA05 REAL ARGUM NG ****\n");
 }
#ifdef __STDC__
 void func021(char cb01,char cb02,char cb03,char cb04,char cb05)
#else
 void func021(cb01,cb02,cb03,cb04,cb05)
 char cb01,cb02,cb03,cb04,cb05;
#endif
 {
#ifdef __STDC__
      void func0211(char cb04);
#else
      void func0211();
#endif
      char cc01;
      cb05=cb03;
      cb02=cb01;
      func0211(cb04);
      cb03='g';
      cc01=cb05;
      cd01=cb01;
      if(cc01=='c')
        printf("******* FUNC021 CB05 CHECK     OK ****\n");
      else
        printf("******* FUNC021 CB05 CHECK     NG ****\n");
 }
#ifdef __STDC__
 void func0211(char ce04)
#else
 void func0211(ce04)
 char ce04;
#endif
 {
      ce04='h';
      return;
 }
 void func03()
 {
      short int  sa01,sa02,sa03,sa04,sa05;
#ifdef __STDC__
      void func031(short int sa01,short int sa02,short int sa03,
                   short int sa04,short int sa05);
#else
      void func031();
#endif
      sa01=1;
      sa02=2;
      sa03=3;
      sa04=4;
      sa05=5;
      func031(sa01,sa02,sa03,sa04,sa05);
      if(sd01==1)
        printf("******* FUNC03 SA01            OK ****\n");
      else
        printf("******* FUNC03 SA01            NG ****\n");
      if(sa02==2)
        printf("******* FUNC03 SA02 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC03 SA05 REAL ARGUM NG ****\n");
      if(sa03==3)
        printf("******* FUNC01 SA03 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC01 SA03 REAL ARGUM NG ****\n");
      if(sa05==5)
        printf("******* FUNC01 SA05 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC01 SA05 REAL ARGUM NG ****\n");
 }
#ifdef __STDC__
 void func031(short int sb01,short int sb02,short int sb03,
              short int sb04,short int sb05)
#else
 void func031(sb01,sb02,sb03,sb04,sb05)
 short int sb01, sb02, sb03, sb04, sb05;
#endif
 {
#ifdef __STDC__
      void func0311(short int sb04);
#else
      void func0311();
#endif
      short int sc01,sc02;
      sc01=sb03;
      sb05=10;
      sb02=sb01+sc01;
      func0311(sb04);
      sb03=sc01+2;
      sc02=sb05;
      sd01=sb01;
      if(sc02==10)
        printf("******* FUNC031 SB05 CHECK     OK ****\n");
      else
        printf("******* FUNC031 SB05 CHECK     NG ****\n");
 }
#ifdef __STDC__
 void func0311(short int se04)
#else
 void func0311( se04)
 short int se04;
#endif
 {
      se04=se04+10;
      return;
 }
 void func04()
 {
      unsigned int  uia01,uia02,uia03,uia04,uia05;
#ifdef __STDC__
      void func041(unsigned int uia01,unsigned int uia02,
       unsigned int uia03,unsigned int uia04,unsigned int uia05);
#else
      void func041();
#endif
      uia01=1;
      uia02=2;
      uia03=3;
      uia04=4;
      uia05=5;
      func041(uia01,uia02,uia03,uia04,uia05);
      if(uid01==1)
        printf("******* FUNC04 UIA01           OK ****\n");
      else
        printf("******* FUNC04 UIA01           NG ****\n");
      if(uia02==2)
        printf("******* FUNC04 UIA02 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC04 UIA05 REAL ARGUM NG ****\n");
      if(uia03==3)
        printf("******* FUNC04 UIA03 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC04 UIA03 REAL ARGUM NG ****\n");
      if(uia05==5)
        printf("******* FUNC04 UIA05 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC01 UIA05 REAL ARGUM NG ****\n");
 }
#ifdef __STDC__
 void func041(unsigned int uib01,unsigned int uib02,
         unsigned int uib03,unsigned int uib04,unsigned int uib05)
#else
 void func041(uib01,uib02,uib03,uib04,uib05)
 unsigned int uib01, uib02, uib03, uib04, uib05;
#endif
 {
#ifdef __STDC__
      void func0411(unsigned int uib04);
#else
      void func0411();
#endif
      unsigned int uic01,uic02;
      uic01=uib03;
      uib05=10;
      uib02=uib01+uic01;
      func0411(uib04);
      uib03=uic01+2;
      uic02=uib05;
      uid01=uib01;
      if(uic02==10)
        printf("******* FUNC041 UIB05 CHECK    OK ****\n");
      else
        printf("******* FUNC041 UIB05 CHECK    NG ****\n");
 }
#ifdef __STDC__
 void func0411(unsigned int uie04)
#else
 void func0411(uie04)
 unsigned int uie04;
#endif
 {
      uie04=uie04+10;
      return;
 }
 void func05()
 {
      unsigned char uca01,uca02,uca03,uca04,uca05;
#ifdef __STDC__
      void func051(unsigned char uca01,unsigned char uca02,
      unsigned char uca03,unsigned char uca04,unsigned char uca05);
#else
      void func051();
#endif
      uca01='a';
      uca02='b';
      uca03='c';
      uca04='d';
      uca05='e';
      func051(uca01,uca02,uca03,uca04,uca05);
      if(ucd01=='a')
        printf("******* FUNC05 UCA01           OK ****\n");
      else
        printf("******* FUNC05 UCA01           NG ****\n");
      if(uca02=='b')
        printf("******* FUNC05 UCA02 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC05 UCA02 REAL ARGUM NG ****\n");
      if(uca03=='c')
        printf("******* FUNC05 UCA03 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC05 UCA03 REAL ARGUM NG ****\n");
      if(uca05=='e')
        printf("******* FUNC05 UCA05 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC05 UCA05 REAL ARGUM NG ****\n");
 }
#ifdef __STDC__
 void func051(unsigned char ucb01,unsigned char ucb02,
      unsigned char ucb03,unsigned char ucb04,unsigned char ucb05)
#else
 void func051(ucb01,ucb02, ucb03,ucb04,ucb05)
 unsigned char ucb01,ucb02, ucb03,ucb04,ucb05;
#endif
 {
#ifdef __STDC__
      void func0511(unsigned char ucb04);
#else
      void func0511();
#endif
      unsigned char ucc01;
      ucb05=ucb03;
      ucb02=ucb01;
      func0511(ucb04);
      ucb03='g';
      ucc01=ucb05;
      ucd01=ucb01;
      if(ucc01=='c')
        printf("******* FUNC051 UCB05 CHECK    OK ****\n");
      else
        printf("******* FUNC051 UCB05 CHECK    NG ****\n");
 }
#ifdef __STDC__
 void func0511(unsigned char uce04)
#else
 void func0511(uce04)
 unsigned char uce04;
#endif
 {
      uce04='h';
      return;
 }
 void func06()
 {
      unsigned short int usa01,usa02,usa03,usa04,usa05;
#ifdef __STDC__
      void func061(unsigned short int usa01,unsigned short int usa02,
      unsigned short int usa03,unsigned short int sa04,
      unsigned short int usa05);
#else
      void func061();
#endif
      usa01=1;
      usa02=2;
      usa03=3;
      usa04=4;
      usa05=5;
      func061(usa01,usa02,usa03,usa04,usa05);
      if(usd01==1)
        printf("******* FUNC06 USA01           OK ****\n");
      else
        printf("******* FUNC06 USA01           NG ****\n");
      if(usa02==2)
        printf("******* FUNC06 USA02 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC06 USA05 REAL ARGUM NG ****\n");
      if(usa03==3)
        printf("******* FUNC06 USA03 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC06 USA03 REAL ARGUM NG ****\n");
      if(usa05==5)
        printf("******* FUNC06 USA05 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC01 USA05 REAL ARGUM NG ****\n");
 }
#ifdef __STDC__
 void func061(unsigned short int usb01,unsigned short int usb02,
      unsigned short int usb03,unsigned short int usb04,
      unsigned short int usb05)
#else
 void func061(usb01,usb02,usb03,usb04, usb05)
 unsigned short int usb01,usb02,usb03,usb04,usb05;
#endif
 {
#ifdef __STDC__
      void func0611(unsigned short int usb04);
#else
      void func0611();
#endif
      unsigned short int usc01,usc02;
      usc01=usb03;
      usb05=10;
      usb02=usb01+usc01;
      func0611(usb04);
      usb03=usc01+2;
      usc02=usb05;
      usd01=usb01;
      if(usc02==10)
        printf("******* FUNC061 USB05 CHECK    OK ****\n");
      else
        printf("******* FUNC061 USB05 CHECK    NG ****\n");
 }
#ifdef __STDC__
 void func0611(unsigned short int use04)
#else
 void func0611(use04)
 unsigned short int use04;
#endif
 {
      use04=use04+10;
      return;
 }
 void func07()
 {
      float fa01,fa02,fa03,fa04,fa05;
#ifdef __STDC__
      void func071(float fa01,float fa02,float fa03,
                   float fa04,float fa05);
#else
      void func071();
#endif
      fa01=1;
      fa02=2;
      fa03=3;
      fa04=4;
      fa05=5;
      func071(fa01,fa02,fa03,fa04,fa05);
      if(fd01==1)
        printf("******* FUNC07 FA01            OK ****\n");
      else
        printf("******* FUNC07 FA01            NG*****\n");
      if(fa02==2)
        printf("******* FUNC07 FA02 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC07 FA05 REAL ARGUM NG ****\n");
      if(fa03==3)
        printf("******* FUNC07 FA03 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC07 FA03 REAL ARGUM NG ****\n");
      if(fa05==5)
        printf("******* FUNC07 FA05 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC07 FA05 REAL ARGUM NG ****\n");
 }
#ifdef __STDC__
 void func071(float fb01,float fb02,float fb03,float fb04,float fb05)
#else
 void func071(fb01,fb02,fb03,fb04,fb05)
 float fb01,fb02,fb03,fb04,fb05;
#endif
 {
#ifdef __STDC__
      void func0711(float fb04);
#else
      void func0711();
#endif
      float fc01,fc02;
      fc01=fb03;
      fb05=10;
      fb02=fb01+fc01;
      func0711(fb04);
      fb03=fc01+2;
      fc02=fb05;
      fd01=fb01;
      if(fc02==10)
        printf("******* FUNC071 FB05 CHECK     OK ****\n");
      else
        printf("******* FUNC071 FB05 CHECK     NG ****\n");
 }
#ifdef __STDC__
 void func0711(float fe04)
#else
 void func0711(fe04)
 float fe04;
#endif
 {
      fe04=fe04+10;
      return;
 }
 void func08()
 {
      double da01,da02,da03,da04,da05;
#ifdef __STDC__
      void func081(double da01,double da02,double da03,
                   double da04,double da05);
#else
      void func081();
#endif
      da01=1;
      da02=2;
      da03=3;
      da04=4;
      da05=5;
      func081(da01,da02,da03,da04,da05);
      if(dd01==1)
        printf("******* FUNC08 DA01            OK ****\n");
      else
        printf("******* FUNC08 DA01            NG ****\n");
      if(da02==2)
        printf("******* FUNC08 DA02 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC08 DA05 REAL ARGUM NG ****\n");
      if(da03==3)
        printf("******* FUNC08 DA03 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC08 DA03 REAL ARGUM NG ****\n");
      if(da05==5)
        printf("******* FUNC08 DA05 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC08 DA05 REAL ARGUM NG ****\n");
 }
#ifdef __STDC__
 void func081(double db01,double db02,double db03,
                   double db04,double db05)
#else
 void func081(db01, db02, db03,  db04, db05)
 double db01, db02, db03,  db04, db05;
#endif
 {
#ifdef __STDC__
      void func0811(double db04);
#else
      void func0811();
#endif
      double dc01,dc02;
      dc01=db03;
      db05=10;
      db02=db01+dc01;
      func0811(db04);
      db03=dc01+2;
      dc02=db05;
      dd01=db01;
      if(dc02==10)
        printf("******* FUNC081 DB05 CHECK     OK ****\n");
      else
        printf("******* FUNC081 DB05 CHECK     NG ****\n");
 }
#ifdef __STDC__
 void func0811(double de04)
#else
 void func0811(de04)
 double de04;
#endif
 {
      de04=de04+10;
      return;
 }
