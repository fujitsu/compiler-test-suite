#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int m3echg12();
int m3echg10();
int m3echg09();
int scodv02();
int scodv01();
int scocv03();
int mptest18();
int mptest17();
int mptest16();
int main()
{
   mptest16();  
   mptest17();  
   mptest18();  
   scocv03();   
   scodv01();   
   scodv02();  
   m3echg09(); 
   m3echg10();  
   m3echg12();  

exit (0);
}


   struct  mp1t1  {
     int  a ;
     char b ;
               } ;
   int mp1fnc1(q)
       struct  mp1t1 q;
   {
       q.a=q.a+1;
       return(q.a);
   }
int mptest18()
   {
       struct mp1t1 p ; int i;
       int mp1fnc1();
       p.a=3 ;
       p.b='9' ;
       i = mp1fnc1(p) ;
       if(i==4)
        printf("*** MPTEST18 OK ***\n") ;
       else
        printf("*** MPTEST18 NG ***\n") ;
   }


   int mp2bbb,*mp2fnc1(int *),*mp2ggg;

int mptest16()
     {
        mp2bbb=10 ;
        mp2ggg=mp2fnc1(&mp2bbb) ;
        if(*mp2ggg == 20)
          printf("*** MPTEST16  OK  ***\n") ;
        else
          printf("*** MPTEST16  NG  ***\n") ;
     }
   int *mp2fnc1(int *ddd)
     {
         struct  t1  {
            int **aaa[7][5][3]  ;
                     } ccc[4] ;
         *ddd = *ddd + 10 ;
         ccc[0].aaa[0][0][0] = &ddd ;
         ccc[3].aaa[6][4][2] = ccc[0].aaa[0][0][0] ;
         return(*ccc[3].aaa[6][4][2]) ;
     }


struct mp3ste {
             int  sti[5];
             char stc;
             struct mp3ste *nxt ;
           } mp3st1[5+1] ;
static char string[]="abcde";
int mp3fnc2(int);
int mp3fnc1(struct mp3ste *,int);
void mp3fnc3(struct mp3ste,struct mp3ste *);

int mptest17()
{
   struct mp3ste st ;
   int         i01 , cd ;

   printf("*** MPTEST17 START ***\n");
   for(i01=0 ; i01<5 ; i01++){
    mp3st1[i01].nxt = (struct mp3ste *) mp3fnc1(&mp3st1[i01],i01);
       if( !(cd=mp3fnc2(mp3st1[i01].sti[i01])) ){
            printf("*** NG  %d   CODE = %d ***\n",i01,cd);
            mp3fnc3(mp3st1[i01],&mp3st1[i01+1]);
            break ;
       } else {
            printf("*** OK  %d ***\n",i01);
       }
   }
   printf("*** MPTEST17 END ***\n");
}
int mp3fnc1(str,i)
   struct mp3ste *str ;
   int         i ;
{
   int    ii;
   for( ii=0 ; ii<5 ; str->sti[ii]=i,ii++ ) ;
   str->stc = string[i++] ;
   str++;
   return((int)str);
}
int mp3fnc2(i)
   int    i ;
{
   int    i01 ;
   char   c = 'a';
   for( i01=0 ; i01<5 ; i01++ ){
       if(mp3st1[i].sti[i01]!=i) return(1);
   }
   if( mp3st1[i].nxt!=&mp3st1[i+1] ) return(2);
   if( mp3st1[i--].stc!=c+i ) return(3);
   return(0);
}
void mp3fnc3(s,p)
   struct mp3ste s;
   struct mp3ste *p;
{
   int i=0;
   for(;i<5;printf("       st.sti[d]    = %d  \n",i,s.sti[i++]));
   printf("       st.stc       = %c \n",s.stc);
   printf("       st.nxt       = %x \n",s.nxt);
   printf("       next address = %x \n",p);
   return;
}

int scocv03()
{
  int f(char c)                                                 ;

  printf("*** SCOCV03  START ***\n")                  ;

  if (f('a'))
    printf("*** OK  1 ***\n")                     ;
  else
    printf("*** NG  1 ***\n")                     ;

  printf("*** SCOCV03  END ***\n")                    ;

}
int f( char c )
{
  return (c =='a') ? 1 : 0                                      ;
}

int scodv01()
{
  volatile signed   char  be1i1_1,be1i1_2,be1i1_3                ;
  volatile unsigned char  be1ui1_1,be1ui1_2,be1ui1_3             ;
  volatile unsigned short int be1ui2_1,be1ui2_2,be1ui2_3         ;

  printf("*** SCODV01  STRT ***\n")                    ;


  be1i1_2 = 7                                                    ;
  be1i1_3 = 5                                                    ;

  be1i1_1 = be1i1_2 * be1i1_3                 ;
  if (be1i1_1 == 35)
    printf("*** OK  1 ***\n")                      ;
  else
    printf("*** NG  1 ***\n")                      ;

  be1i1_1 = be1i1_2 - be1i1_3              ;
  if (be1i1_1 == 2)
    printf("*** OK  2 ***\n")                      ;
  else
    printf("*** NG  2 ***\n")                      ;

  be1i1_1 = be1i1_2 / be1i1_3                  ;
  if (be1i1_1 == 1)
    printf("*** OK  3 ***\n")                      ;
  else
    printf("*** NG  3 ***\n")                      ;

  be1i1_1 = be1i1_2 % be1i1_3                 ;
  if (be1i1_1 == 2)
    printf("*** OK  4 ***\n")                      ;
  else
    printf("*** NG  4 ***\n")                      ;


  be1ui1_2 = 7                                                ;
  be1ui1_3 = 5                                                   ;

  be1ui1_1 = be1ui1_2 * be1ui1_3                ;
  if (be1ui1_1 == 35)
    printf("*** OK  5 ***\n")                      ;
  else
    printf("*** NG  5 ***\n")                      ;

  be1ui1_1 = be1ui1_2 - be1ui1_3               ;
  if (be1ui1_1 == 2)
    printf("*** OK  6 ***\n")                      ;
  else
    printf("*** NG  6 ***\n")                      ;

  be1ui1_1 = be1ui1_2 / be1ui1_3              ;
  if (be1ui1_1 == 1)
    printf("*** OK  7 ***\n")                      ;
  else
    printf("*** NG  7 ***\n")                      ;

  be1ui1_1 = be1ui1_2 % be1ui1_3             ;
  if (be1ui1_1 == 2)
    printf("*** OK  8 ***\n")                      ;
  else
    printf("*** NG  8 ***\n")                      ;


  be1ui2_2 = 7                                                   ;
  be1ui2_3 = 5                                                   ;

  be1ui2_1 = be1ui2_2 * be1ui2_3                ;
  if (be1ui2_1 == 35)
    printf("*** OK  9 ***\n")                      ;
  else
    printf("*** NG  9 ***\n")                      ;

  be1ui2_1 = be1ui2_2 - be1ui2_3              ;
  if (be1ui2_1 == 2)
    printf("*** OK 10 ***\n")                      ;
  else
    printf("*** NG 10 ***\n")                      ;

  be1ui2_1 = be1ui2_2 / be1ui2_3               ;
  if (be1ui2_1 == 1)
    printf("*** OK 11 ***\n")                      ;
  else
    printf("*** NG 11 ***\n")                      ;

  be1ui2_1 = be1ui2_2 % be1ui2_3              ;
  if (be1ui2_1 == 2)
    printf("*** OK 12 ***\n")                      ;
  else
    printf("*** NG 12 ***\n")                      ;


  printf("*** SCODV01  END ***\n")                     ;

}

int scodv02()
{
  signed         char i1_1                                      ;
  signed         char i1_2  = 2u                                ;
  signed         char i1_3  = 3u                                ;

  unsigned       char ui1_1                                     ;
  unsigned       char ui1_2 = 2u                                ;
  unsigned       char ui1_3 = 3u                                ;

  unsigned short int  ui2_1                                     ;
  unsigned short int  ui2_2 = 2u                                ;
  unsigned short int  ui2_3 = 3u                                ;

  printf("*** SCODV2  STARTED ***\n")                   ;


  i1_1 = i1_2 < i1_3                                 ;
  if (i1_1 != 0)        
    printf("*** OK  1 ***\n")                     ;
  else
    printf("*** NG  1 ***\n")                     ;

  i1_1 = i1_2 <= i1_3                               ;
  if (i1_1 != 0)         
    printf("*** OK  2 ***\n")                     ;
  else
    printf("*** NG  2 ***\n")                     ;

  i1_1 = i1_2 == i1_3                               ;
  if (i1_1 == 0)        
    printf("*** OK  3 ***\n")                     ;
  else
    printf("*** NG  3 ***\n")                     ;

  i1_1 = i1_2 >= i1_3                                ;
  if (i1_1 == 0)         
    printf("*** OK  4 ***\n")                     ;
  else
    printf("*** NG  4 ***\n")                     ;

  i1_1 = i1_2 >  i1_3                                 ;
  if (i1_1 == 0)         
    printf("*** OK  5 ***\n")                     ;
  else
    printf("*** NG  5 ***\n")                     ;

  i1_1 = i1_2 != i1_3                                ;
  if (i1_1 != 0)         
    printf("*** OK  6 ***\n")                     ;
  else
    printf("*** NG  6 ***\n")                     ;


  printf("*** SCODV2  END ***\n")                     ;

}


int fe1fnc1();
int fe1fnc2();

int m3echg09()
{
   int wk=0;

   printf("*** M3ECHG09 START ***\n");

    {
       static int    arr1[5]={ 0,1,2,3,4 };
       int    ia = 3;
       int    ib = 3;

       wk = arr1[ia==ib];
       if(wk==1)
           printf("*** OK  1 ***\n");
       else
           printf("*** NG  1 ****\n");
     }
     {
       int   ig = 1;
       int   ih = 1;

       wk = ih == ig;
       if(wk)
           printf("*** OK  2 ***\n");
       else
           printf("*** NG  2 ****\n");
     }
     {
       int    *pt1;
       int    *pt2;
       static int arr2[2];
       static int arr3[2];
       pt1 = arr2;
       pt2 = arr3;

       wk = pt2 == pt1;
       if(wk)
           printf("*** NG  3 ***\n");
       else
           printf("*** OK  3 ***\n");
     }
     {
       static int arr4[2];
       static int sia=1;
       int    *pt3;
       pt3 = &sia;

       wk = pt3 == arr4;
       if(wk)
           printf("*** NG  4 ****\n");
       else
           printf("*** OK  4  ***\n");
     }
     {
       int    *pt4;
       static int sib=1;
       static int arr5[2];
       pt4 = &sib;

       wk = arr5 == pt4;
       if(wk)
           printf("*** NG  5 ****\n");
       else
           printf("*** OK  5 ***\n");
     }
     {
       static int arr6[2];
       static int arr7[2];

       wk = arr7 == arr6;
       if(wk)
           printf("*** NG  6 ****\n");
       else
           printf("*** OK  6 ***\n");
     }
     {
       wk = fe1fnc2 == fe1fnc1;
       if(wk)
           printf("*** NG  7 ****\n");
       else
           printf("*** OK  7 ***\n");
     }
     {
       int      it = 3;
       int      wk2;

       wk = it == 3;
       wk2= it == 'a';
       if(wk)
       {
           if(wk2)
               printf("*** NG  8 ****\n");
           else
               printf("*** OK  8 ***\n");
       }
       else
           printf("*** NG  8 ****\n");
     }
     {
       int     *pt7;
       int     io = 1;
       pt7=&io;

       wk = pt7 == 0;
       if(wk)
           printf("*** NG  9 ****\n");
       else
           printf("*** OK  9 ***\n");
     }
     {
       int     arr9[2];

       wk = arr9 == 0;
       if(wk)
           printf("*** NG 10 ****\n");
       else
           printf("*** OK 10 ***\n");
     }
     {
       wk = fe1fnc1 == 0;
       if(wk)
           printf("*** NG 11 ****\n");
       else
           printf("*** OK 11 ***\n");
     }
     {
       int      in1 = 5;

       wk = 5 == in1;
       if(wk)
           printf("*** OK 12 ***\n");
       else
           printf("*** NG 12 ****\n");
     }

   printf("*** M3ECHG09 END ***\n");
}

int fe1fnc1()
{  ;;;;;;;;;;;;;;;;;;;;;; }

int fe1fnc2()
{  ;;;;;;;;;;;;;;;;;;;;;; }


int fe2pfnc1();
int fe2pfnc2();

int m3echg10()
{
   int wk=0;

   printf("*** M3ECHG10 START ***\n");

    {
       static int    arr1[5]={ 0,1,2,3,4 };
       int    ia = 2;
       int    ib = 3;

       wk = arr1[ia!=ib];
       if(wk==1)
           printf("*** OK  1 ***\n");
       else
           printf("*** NG  1 ****\n");
     }
     {
       int   ig = 1;
       int   ih = 2;

       wk = ih != ig;
       if(wk)
           printf("*** OK  2 ***\n");
       else
           printf("*** NG  2 ****\n");
     }
     {
       int    *pt1;
       int    *pt2;
       static int arr2[2];
       static int arr3[2];
       pt1 = arr2;
       pt2 = arr3;

       wk = pt2 != pt1;
       if(wk)
           printf("*** OK  3 ***\n");
       else
           printf("*** NG  3 ****\n");
     }
     {
       static int arr4[2];
       static int sia=1;
       int    *pt3;
       pt3 = &sia;

       wk = pt3 != arr4;
       if(wk)
           printf("*** OK  4 ***\n");
       else
           printf("*** NG  4 ****\n");
     }
     {
       int    *pt4;
       static int sib=1;
       static int arr5[2];
       pt4 = &sib;

       wk = arr5 != pt4;
       if(wk)
           printf("*** OK  5 ***\n");
       else
           printf("*** NG  5 ****\n");
     }
     {
       static int arr6[2];
       static int arr7[2];

       wk = arr7 != arr6;
       if(wk)
           printf("*** OK  6 ***\n");
       else
           printf("*** NG  6 ****\n");
     }
     {
       wk = fe2pfnc2 != fe2pfnc1;
       if(wk)
           printf("*** OK  7 ***\n");
       else
           printf("*** NG  7 ****\n");
     }
     {
       int      it = 3;
       int      wk2;

       wk = it != 2;
       wk2= it != 'a';
       if(wk)
       {
           if(wk2)
               printf("*** OK  8 ***\n");
           else
               printf("*** NG  8 ****\n");
       }
       else
           printf("*** NG  8 ****\n");
     }
     {
       int     *pt7;
       int     io = 1;
       pt7=&io;

       wk = pt7 != 0;
       if(wk)
           printf("*** OK  9 ***\n");
       else
           printf("*** NG  9 ****\n");
     }
     {
       int     arr9[2];

       wk = arr9 != 0;
       if(wk)
           printf("*** OK 10 ***\n");
       else
           printf("*** NG 10 ****\n");
     }
     {
       wk = fe2pfnc1 != 0;
       if(wk)
           printf("*** OK 11 ***\n");
       else
           printf("*** NG 11 ****\n");
     }
     {
       int      in1 = 6;

       wk = 5 != in1;
       if(wk)
           printf("*** OK 12 ***\n");
       else
           printf("*** NG 12 ****\n");
     }

   printf("*** M3ECHG10 END ***\n");
}

int fe2pfnc1()
{  ;;;;;;;;;;;;;;;;;;;;;; }

int fe2pfnc2()
{  ;;;;;;;;;;;;;;;;;;;;;; }


int fe3fnc1();
int fe3fnc2();

int m3echg12()
{
   int wk=0;

   printf("*** M3ECHG12 START ***\n");

 {
    int      ia = 1;
    int      ib = 2;

    if(ia && ib)
        printf("*** OK  1 ***\n");
    else
        printf("*** NG  1 ****\n");
 }
 {
    int      ic = 1;
    int      id = 2;
    int      *pt;
    pt = &id;

    if(ic && pt)
printf("*** OK  2 ***\n");
    else
        printf("*** NG  2 ****\n");
 }
 {
    int      ie = 1;
    int      arr1[2];

    if(ie && arr1)
        printf("*** OK  3 ***\n");
    else
        printf("*** NG  3 ****\n");
 }
 {
    int      ig = 1;

    if(ig && fe3fnc1)
        printf("*** OK  4 ***\n");
    else
        printf("*** NG  4 ****\n");
 }
 {
    int      ih = 1;
    int      ii = 1;
    int      *ptb;
    ptb = &ii;

    if(ptb && ih)
        printf("*** OK  5 ***\n");
    else
        printf("*** NG  5 ****\n");
 }
 {
    int      ij = 1;
    int      ik = 1;
    int      *ptc;
    int      *ptd;
    ptc = &ij;
    ptd = &ik;

    if(ptc && ptd)
        printf("*** OK  6 ***\n");
    else
        printf("*** NG  6 ****\n");
 }
 {
    int      il = 1;
    int      arr2[2];
    int      *pte;
    pte = &il;

    if(pte && arr2)
        printf("*** OK  7 ***\n");
    else
        printf("*** NG  7 ****\n");
 }
 {
    int      im = 1;
    int      *ptf;
    ptf = &im;

    if(ptf && fe3fnc1)
        printf("*** OK  8 ***\n");
    else
        printf("*** NG  8 ****\n");
 }
 {
    int      io = 1;
    int      arr4[2];

    if(arr4 && io)
        printf("*** OK  9 ***\n");
    else
        printf("*** NG  9 ****\n");
 }
 {
    int      ip = 1;
    int      *ptg;
    int      arr5[2];
    ptg = &ip;

    if(arr5 && ptg)
        printf("*** OK 10 ***\n");
    else
        printf("*** NG 10 ****\n");
 }
 {
    int      arr6[2];
    int      arr7[2];

    if(arr6 && arr7)
        printf("*** OK 11 ***\n");
    else
        printf("*** NG 11 ****\n");
 }
 {
    int      arr8[2];

    if(arr8 && fe3fnc1)
        printf("*** OK 12 ***\n");
    else
        printf("*** NG 12 ****\n");
 }
 {
    int      ir = 1;

    if(fe3fnc1 && ir)
        printf("*** OK 13 ***\n");
    else
        printf("*** NG 13 ****\n");
 }
 {
    if(fe3fnc1 && fe3fnc2)
        printf("*** OK 14 ***\n");
    else
        printf("*** NG 14 ****\n");
 }
 {
    int      is = 1;

    if(is && 1)
        if(is && 'a')
            printf("*** OK 15 ***\n");
        else
            printf("*** NG 15 ****\n");
    else
        printf("*** NG 15 ****\n");
 }
 {
    int      it = 1;
    int      *pth;
    pth = &it;

    if(pth && 1)
        printf("*** OK 16 ***\n");
    else
        printf("*** NG 16 ****\n");
 }
 {
    int      iu = 1;
    int      iv = 2;
    int      *pti;
    int      *ptj;
    pti = &iu;
    ptj = &iv;

    if(pti && ptj)
        printf("*** OK 17 ***\n");
    else
        printf("*** NG 17 ****\n");
 }
 {
    int      arr6[2];

    if(arr6 && 1)
        printf("*** OK 18 ***\n");
    else
        printf("*** NG 18 ****\n");
 }
 {
    if(fe3fnc1 && 1)
        printf("*** OK 19 ***\n");
    else
        printf("*** NG 19 ****\n");
 }
 {
    int      iv = 1;

    if(1 && iv)
        printf("*** OK 20 ***\n");
    else
        printf("*** NG 20 ****\n");
 }
 {
    int      iw = 1;
    int      *ptk;
    ptk = &iw;

    if(1000 && ptk)
        printf("*** OK 21 ***\n");
    else
        printf("*** NG 21 ****\n");
 }
 {
    int      arr7[2];

    if(1000 && arr7)
        printf("*** OK 22 ***\n");
    else
        printf("*** NG 22 ****\n");
 }
 {
    if(200 && fe3fnc1)
        printf("*** OK 23 ***\n");
    else
        printf("*** NG 23 ****\n");
 }
 {
    int      iz;

    iz = fe3fnc1 && 0;
    if(iz)
        printf("*** NG 24 ****\n");
    else
        printf("*** OK 24 ***\n");
 }
 {
    int      ix;
    int      arr9[2];

    ix = arr9 && 0;
    if(ix)
        printf("*** NG 25 ****\n");
    else
        printf("*** OK 25 ***\n");
 }
   printf("*** M3ECHG12 END ***\n");
}

int fe3fnc1()
{        }

int fe3fnc2()
{        }
