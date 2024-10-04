#include <stdio.h>
int sub5 (int j);
int sub (int i);
int m3mpcm06 (void);
int m3mpcm05 (void);
int m3mpcm04 (void);
int m3mpcm03 (void);
int scrlp07 (void);
int scrlp06 (void);
int scrlp05 (void);
int scrlp04 (void);
int m3etrm07 (void);
int m3etrm06 (void);
int m3etrm05 (void);
int m3etrm04 (void);
int m3etrm03 (void);
int m3etrm02 (void);
int m3etrm01 (void);
int main()
{
    printf("***  *** TEST FOR COMMON *** STARTED ***\n");
    m3etrm01();
    m3etrm02();
    m3etrm03();
    m3etrm04();
    m3etrm05();
    m3etrm06();
    m3etrm07();
    scrlp04();
    scrlp05();
    scrlp06();
    scrlp07();
    m3mpcm03();
    m3mpcm04();
    m3mpcm05();
    m3mpcm06();
    printf("\n***  *** TEST FOR COMMON *** ENDED ***\n");
}


int exi=0;

int 
m3etrm01 (void)
{
   int i,i2,*ip,fnc(),iarry[2];
   static struct sttag { int i; char c; } st1,st2;
   enum   entag { en1, en2 } en;
   void   vfnc();

   printf("\n*** M3ETRM01 ** MK3 TEST FOR FE1 ** STARTED ***\n");

   i = 1;  i2 = 2;
   if ((i,i2)!=2)
       printf(" *** M3ETRM01 TEST-01 ERROR ***\n");
   else
       printf(" *** M3ETRM01 TEST-01 OK ***\n");
   st1.i = -1;  st1.c = 127;
   st2.i=(i,st1.i);
   st2.c=(i,st1.c);
   if (st2.i!=-1 || st2.c!=127)
       printf(" *** M3ETRM01 TEST-02 ERROR ***\n");
   else
       printf(" *** M3ETRM01 TEST-02 OK ***\n");

   en = en1;
   if ((i,en)!=0)
       printf(" *** M3ETRM01 TEST-03 ERROR ***\n");
   else
       printf(" *** M3ETRM01 TEST-03 OK ***\n");

   ip = &i2;
   if (*(i,ip)!=2)
       printf(" *** M3ETRM01 TEST-04 ERROR ***\n");
   else
       printf(" *** M3ETRM01 TEST-04 OK ***\n");

   if ((i,fnc())!=-1)
       printf(" *** M3ETRM01 TEST-05 ERROR ***\n");
   else
       printf(" *** M3ETRM01 TEST-05 OK ***\n");

   iarry[0] = 1;  iarry[1] = 2;
   if ((i,iarry)[1]!=2)
       printf(" *** M3ETRM01 TEST-06 ERROR ***\n");
   else
       printf(" *** M3ETRM01 TEST-06 OK ***\n");

   i,vfnc();
   if (exi!=100)
       printf(" *** M3ETRM01 TEST-07 ERROR ***\n");
   else
       printf(" *** M3ETRM01 TEST-07 OK ***\n");

   printf("*** M3ETRM01 TEST ENDED ***\n");
   return 0;
}

int 
fnc (void)
{
  return -1;
}

void 
vfnc (void)
{
  exi += 100;
  return ;
}

int 
m3etrm02 (void)
{
   int i,i2,*ip,**ipp,iarry[3],*iarryp[3];
   int fnc1(),fnc2(),(*fncp)(),(*fnca[2])();
   static char  c1[4]={1,2,3,4},(*cp)[2];
   static struct sttag {
       int i;
       char c;
   } st[2]={1,2,3,4},*stp;
   enum   entag { en1, en2, en3 } en[3],*enp;

   printf("\n*** M3ETRM02 ** MK3 TEST FOR FE1 ** STARTED ***\n");

   i = 1;  i2 = 2;
   iarry[0] = 1;  iarry[1] = 2;  iarry[2] = 3;
   ip = iarry;
   if (*(i2+ip)!=3)
       printf(" *** M3ETRM02 TEST-01 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-01 OK ***\n");

   if (*(ip+i)!=2)
       printf(" *** M3ETRM02 TEST-02 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-02 OK ***\n");
   stp = st;
   if ((i+stp)->i!=3 || (i+stp)->c!=4)
       printf(" *** M3ETRM02 TEST-03 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-03 OK ***\n");

   if ((stp+i)->i!=3 || (stp+i)->c!=4)
       printf(" *** M3ETRM02 TEST-04 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-04 OK ***\n");

   en[0] = en1;  en[1] = en2;  en[2] = en3;
   enp = en;
   if (*(i2+enp)!=2)
       printf(" *** M3ETRM02 TEST-05 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-05 OK ***\n");

   if (*(enp+i)!=1)
       printf(" *** M3ETRM02 TEST-06 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-06 OK ***\n");

   iarryp[0] = &iarry[0];
   iarryp[1] = &iarry[1];
   iarryp[2] = &iarry[2];
   ipp = iarryp;
   if (**(i2+ipp)!=3)
       printf(" *** M3ETRM02 TEST-07 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-07 OK ***\n");

   if (**(ipp+i)!=2)
       printf(" *** M3ETRM02 TEST-08 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-08 OK ***\n");

   fnca[0] = fnc1;
   fnca[1] = fnc2;
   fncp = fnca[0];
   if ((int)(i+(int *)fncp)!=(int)(fncp)+4)
       printf(" *** M3ETRM02 TEST-09 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-09 OK ***\n");

   if ((int)((int *)fncp+i2)!=(int)(fncp)+8)
       printf(" *** M3ETRM02 TEST-10 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-10 OK ***\n");

   cp = (char (*)[2])c1;
   if ((*(i+cp))[0]!=3 || (*(i+cp))[1]!=4)
       printf(" *** M3ETRM02 TEST-11 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-11 OK ***\n");

   if ((*(cp+i))[0]!=3 || (*(cp+i))[1]!=4)
       printf(" *** M3ETRM02 TEST-12 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-12 OK ***\n");

   if (*(i+iarry)!=2 || *(i2+iarry)!=3)
       printf(" *** M3ETRM02 TEST-13 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-13 OK ***\n");

   if (*(iarry+i)!=2 || *(iarry+i2)!=3)
       printf(" *** M3ETRM02 TEST-14 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-14 OK ***\n");

   printf("*** M3ETRM02 TEST ENDED ***\n");
   return 0;
}

int 
fnc1 (void)
{
  return 1;
}

int 
fnc2 (void)
{
  return 2;
}

int 
m3etrm03 (void)
{
   int i,i2,*ip,fnc3(),iarry[2];
   enum   entag { en1, en2 } en;
   void   vfnc();

   printf("\n*** M3ETRM03 ** MK3 TEST FOR FE1 ** STARTED ***\n");

   i = 1;  i2 = 2;
   if ((i&&i2)!=1)
       printf(" *** M3ETRM03 TEST-01 ERROR ***\n");
   else
       printf(" *** M3ETRM03 TEST-01 OK ***\n");

   en = en1;
   if ((i&&en)!=0)
       printf(" *** M3ETRM03 TEST-02 ERROR ***\n");
   else
       printf(" *** M3ETRM03 TEST-02 OK ***\n");

   ip = &i2;
   if ((i&&ip)!=1)
       printf(" *** M3ETRM03 TEST-03 ERROR ***\n");
   else
       printf(" *** M3ETRM03 TEST-03 OK ***\n");

   if ((i&&fnc3())!=0)
       printf(" *** M3ETRM03 TEST-04 ERROR ***\n");
   else
       printf(" *** M3ETRM03 TEST-04 OK ***\n");

   iarry[1]=1;
   if ((i&&iarry[1])!=1)
       printf(" *** M3ETRM03 TEST-05 ERROR ***\n");
   else
       printf(" *** M3ETRM03 TEST-05 OK ***\n");

   printf("*** M3ETRM03 TEST ENDED ***\n");
   return 0;
}

int 
fnc3 (void)
{
  return 0;
}

int 
m3etrm04 (void)
{
   int i,i2,*ip,fnc4(),iarry[2];
   enum   entag { en1, en2 } en;

   printf("\n*** M3ETRM04 ** MK3 TEST FOR FE1 ** STARTED ***\n");

   i = 0;  i2 = 1;
   if ((i||i2)!=1)
       printf(" *** M3ETRM04 TEST-01 ERROR ***\n");
   else
       printf(" *** M3ETRM04 TEST-01 OK ***\n");

   en = en1;
   if ((i||en)!=0)
       printf(" *** M3ETRM04 TEST-02 ERROR ***\n");
   else
       printf(" *** M3ETRM04 TEST-02 OK ***\n");

   ip = &i2;
   if ((i||ip)!=1)
       printf(" *** M3ETRM04 TEST-03 ERROR ***\n");
   else
       printf(" *** M3ETRM04 TEST-03 OK ***\n");

   if ((i||fnc4())!=0)
       printf(" *** M3ETRM04 TEST-04 ERROR ***\n");
   else
       printf(" *** M3ETRM04 TEST-04 OK ***\n");

   iarry[1]=0;
   if ((i2||iarry[1])!=1)
       printf(" *** M3ETRM04 TEST-05 ERROR ***\n");
   else
       printf(" *** M3ETRM04 TEST-05 OK ***\n");

   printf("*** M3ETRM04 TEST ENDED ***\n");
   return 0;
}

int 
fnc4 (void)
{
  return 0;
}

int 
m3etrm05 (void)
{
   int i,i2,*ip,fnc5(),iarry[2];
   enum   entag { en1, en2 } en;

   printf("\n*** M3ETRM05 ** MK3 TEST FOR FE1 ** STARTED ***\n");

   i = 0;  i2 = 1;
   if (!i!=1 || !i2!=0)
       printf(" *** M3ETRM05 TEST-01 ERROR ***\n");
   else
       printf(" *** M3ETRM05 TEST-01 OK ***\n");

   en = en1;
   if (!en!=1)
       printf(" *** M3ETRM05 TEST-02 ERROR ***\n");
   else
       printf(" *** M3ETRM05 TEST-02 OK ***\n");

   ip = &i2;
   if (!ip!=0)
       printf(" *** M3ETRM05 TEST-03 ERROR ***\n");
   else
       printf(" *** M3ETRM05 TEST-03 OK ***\n");

   if (!fnc5()!=0)
       printf(" *** M3ETRM05 TEST-04 ERROR ***\n");
   else
       printf(" *** M3ETRM05 TEST-04 OK ***\n");

   iarry[1]=1;
   if (!iarry[1]!=0)
       printf(" *** M3ETRM05 TEST-05 ERROR ***\n");
   else
       printf(" *** M3ETRM05 TEST-05 OK ***\n");

   printf("*** M3ETRM05 TEST ENDED ***\n");
   return 0;
}

int 
fnc5 (void)
{
  return -1;
}

int 
m3etrm06 (void)
{
   int i,i2,fnc6();
   enum   entag { en1, en2 } en;

   printf("\n*** M3ETRM06 ** MK3 TEST FOR FE1 ** STARTED ***\n");

   i = 0;  i2 = 1;
   if (~i!=-1 || ~i2!=-2)
       printf(" *** M3ETRM06 TEST-01 ERROR ***\n");
   else
       printf(" *** M3ETRM06 TEST-01 OK ***\n");

   en = en1;
   if (~en!=-1)
       printf(" *** M3ETRM06 TEST-02 ERROR ***\n");
   else
       printf(" *** M3ETRM06 TEST-02 OK ***\n");

   if (~fnc6()!=0)
       printf(" *** M3ETRM06 TEST-03 ERROR ***\n");
   else
       printf(" *** M3ETRM06 TEST-03 OK ***\n");

   printf("*** M3ETRM06 TEST ENDED ***\n");
   return 0;
}

int 
fnc6 (void)
{
  return -1;
}

int 
m3etrm07 (void)
{
   int i,i2,*ip;

   printf("\n*** M3ETRM07 ** MK3 TEST FOR FE1 ** STARTED ***\n");

   i = 1;  i2 = 2;
   i += i2;
   if (i!=3)
       printf(" *** M3ETRM07 TEST-01 ERROR ***\n");
   else
       printf(" *** M3ETRM07 TEST-01 OK ***\n");

   ip = 0;
   ip += i;
   if ((int)ip!=(3*sizeof(int)))
       printf(" *** M3ETRM07 TEST-02 ERROR ***\n");
   else
       printf(" *** M3ETRM07 TEST-02 OK ***\n");

   printf("*** M3ETRM07 TEST ENDED ***\n");
   return 0;
}

int 
scrlp04 (void)
{
    int *p;
    int i,sum=0;
    p = &i;
    for(i=0;i<10;i++) {
      (*p)++;
      sum=sum+i;
    }
    if( sum == 25 ) {
      puts(" OK \n");
    }
    else {
      puts(" NG \n");
    }
    return 0;
}

int 
scrlp05 (void)
{
  sub(2);
  return 0;
}
int 
sub (int i)
{
    static int j;
    if( i == 2 ) {
      for(j=0;j<10;j++)
        sub(1);
      if( j == 12 ) {
         puts(" OK \n");
      }
      else {
         puts(" NG \n");
      }
    }
    else
      j=j+3;
    return 0;
}
int 
scrlp06 (void)
{
    int *p;
    int sum=0;
    struct tag {
      int x,y;
    } i;
    p = &i.x;
    for(i.x=0;i.x<10;i.x++) {
      (*p)++;
      sum=sum+i.x;
    }
    if( sum == 25 ) {
      puts(" OK \n");
    }
    else {
      puts(" NG \n");
    }
    return 0;
}
int 
scrlp07 (void)
{
     int i,dim[10];
     int flag=0;
     for(i=0;i<10;i++) dim[i] = 1;
     for(i=0;i<10;i++) {
       if( dim[i] == 0 ) {
         flag = 1;
         break;
       }
     }
     if( flag == 0 && i == 10 ) {
       puts(" OK \n");
     }
     else {
       puts(" NG \n");
     }
     sub5(1);
     return 0;
}
int 
sub5 (int j)
{
     register int i;
     int dim[10];
     int flag=0;
     if( j ) {
       for(i=0;i<10;i++) dim[i] = 1;
     }
     for(i=0;i<10;i++) {
       if( dim[i] == 0 ) {
         flag = 1;
         break;
       }
     }
     if( flag == 0 && i == 10 ) {
       puts(" OK \n");
     }
     else {
       puts(" NG \n");
     }
     return flag;
}
 int   outi1,outi2;
int 
m3mpcm03 (void)
 {
   int *pi;
   int ai,bi,ei,fi;
   ai=10;
   bi=20;
   ei=50;
   fi=60;
   pi=&ai;
   fi=*pi;
   if(bi==20) {
    *pi=15;
   }
   ei=*pi;
   if(ei==fi)
   {
     printf("error of a-2 : ei = %d\n",ei);
   }
   else
   {
     if(ei!=15)
     {
       printf("error of a-2 : ei = %d\n",ei);
     }
     else
     {
       printf("ok of a-2\n");
     }
   }
   ai=10;

   pi=&ai;
   fi=ai+bi;
   if(bi==20) {
     *pi=15;
   }
   ei=ai+bi;
   if(ei==fi)
   {
     printf("error of c-2 : ei = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("error of c-2 : ei = %d\n",ei);
     }
     else
     {
       printf("ok of c-2\n");
     }
   }
   ai=10;

   pi=&ai;
   fi=bi+(*pi);
   if(bi==20) {
     ai=15;
   }
   ei=bi+(*pi);
   if(ei==fi)
   {
     printf("error of b-2:ei = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("error of b-2:ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-2\n");
     }
   }
   ai=10;
   return 0;
 }
 int   outi1a,outi2a;
 float outf1a,outf2a;
int 
m3mpcm04 (void)
 {
   int *pi,*qi;
   int ai,bi,ci,di,ei,fi;
   int i;
   float *pf,*qf;
   float af,bf,cf,df,ef,ff;

   struct array {
     int aa[10];
     int bb[10];
   };
   struct array  xs;
   struct array *ps;

   union alis {
     int xi;
     float xf;
     int cc[10];
     struct array as;
   };
   union alis  xu;
   union alis *pu;

   ai=10;
   bi=20;
   ci=30;
   di=40;
   ei=50;
   fi=60;

   pu=&xu;
   for(i=0;i<10;i++) {
     pu->as.aa[i]=(i+1)*10;
     pu->as.bb[i]=(i+1)*10;
   }

   fi=pu->as.aa[0];
   if(ci==30) {
     xu.xi=200;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-1 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-1 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-1\n");
     }
   }
   ai=10;
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   if(ci==30) {
     pu->xi=200;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-2 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-2 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-2\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   if(ci==30) {
     pu->xf=200.0;
   }
   ei=pu->as.aa[0];
   if(ei==fi)
   {
     ai=pu->xf+bi;
     printf("error of b-1-3 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=0x42c80000)   
     {
       printf("error of b-1-3 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-3\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   if(ci==30) {
     xu.xf=200.0;
   }
   ei=pu->as.aa[0];
   if(ei==fi)
   {
     ai=xu.xf+bi;
     printf("error of b-1-4 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=0x42c80000)   
     {
       printf("error of b-1-4 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-4\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   if(ci==30) {
     xu.cc[0]=200;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-5 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-5 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-5\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   if(ci==30) {
     pu->cc[0]=200;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-6 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-6 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-6\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   if(ci==30) {
     xu.xi=200;
   }
   ei=pu->as.aa[0];
   if(ei!=200) {
     printf("error                 \n");
   }
   return 0;
 }
 int   outi1b,outi2b;
int 
m3mpcm05 (void)
 {
   int *pi;
   int ai,bi,ei,fi;
   float af;
   ai=10;
   bi=20;
   ei=50;
   fi=60;
   pi=&ai;
   fi=*pi;
   *pi=15;
   if(bi==20) {
     af=20.0;
   }
   ei=*pi;
   if(ei==fi)
   {
     printf("error of a-2 : ei = %d\n",ei);
   }
   else
   {
     if(ei!=15)
     {
       printf("error of a-2 : ei = %d\n",ei);
     }
     else
     {
       printf("ok of a-2\n");
     }
   }
   ai=10;

   pi=&ai;
   fi=ai+bi;
   *pi=15;
   if(bi==20) {
     af=20.0;
   }
   ei=ai+bi;
   if(ei==fi)
   {
     printf("error of c-2 : ei = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("error of c-2 : ei = %d\n",ei);
     }
     else
     {
       printf("ok of c-2\n");
     }
   }
   ai=10;

   pi=&ai;
   fi=bi+(*pi);
   ai=15;
   if(bi==20) {
     af=20.0;
   }
   ei=bi+(*pi);
   if(ei==fi)
   {
     printf("error of b-2:ei = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("error of b-2:ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-2\n");
     }
   }
   ai=10;
   return 0;
 }
 int   outi1c,outi2c;
 float outf1c,outf2c;
int 
m3mpcm06 (void)
 {
   int *pi,*qi;
   int ai,bi,ci,di,ei,fi;
   int i;
   float *pf,*qf;
   float af,bf,cf,df,ef,ff;

   struct array {
     int aa[10];
     int bb[10];
   };
   struct array  xs;
   struct array *ps;

   union alis {
     int xi;
     float xf;
     int cc[10];
     struct array as;
   };
   union alis  xu,yu;
   union alis *pu;

   ai=10;
   bi=20;
   ci=30;
   di=40;
   ei=50;
   fi=60;

   pu=&xu;
   for(i=0;i<10;i++) {
     pu->as.aa[i]=(i+1)*10;
     pu->as.bb[i]=(i+1)*10;
   }

   fi=pu->as.aa[0];
   xu.xi=200;
   if(ci==30) {
     af=10.0;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-1 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-1 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-1\n");
     }
   }
   ai=10;
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   pu->xi=200;
   if(ci==30) {
     af=10.0;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-2 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-2 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-2\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   pu->xf=200.0;
   if(ci==30) {
     af=10.0;
   }
   ei=pu->as.aa[0];
   if(ei==fi)
   {
     ai=pu->xf+bi;
     printf("error of b-1-3 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=0x42c80000)   
     {
       printf("error of b-1-3 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-3\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   xu.xf=200.0;
   if(ci==30) {
     af=10.0;
   }
   ei=pu->as.aa[0];
   if(ei==fi)
   {
     ai=xu.xf+bi;
     printf("error of b-1-4 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=0x42c80000)   
     {
       printf("error of b-1-4 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-4\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   xu.cc[0]=200;
   if(ci==30) {
     af=10.0;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-5 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-5 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-5\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   pu->cc[0]=200;
   if(ci==30) {
     af=10.0;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-6 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-6 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-6\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   xu.xi=200;
   if(ci==30) {
     af=10.0;
   }
   ei=pu->as.aa[0];
   if(ei!=200) {
     printf("error                 \n");
   }
   return 0;
 }
