#include <math.h>
#include  <stdio.h>
#include  <stdlib.h>
int main( ) {

 {
 struct g {
            int  c;
            char a[11];
           };
 struct h {
            short int  c;
            char a[10];
           };
 struct k {
            char a[10];
           };
 int      i;
 struct g *etc;
 struct h *esc;
  union {
         struct g *ta;
         struct h *sa;
         struct k  ra;
         int       t;       
         struct h *sb;
         struct g *tb;
         struct k  rb;
        } ut;
  struct g *tc,*utsave;
  struct h *sc,*ussave;
  union {
         char       u;       
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
        } uz;
                                printf("**** START\n");
          utsave=ut.ta=(struct g *)malloc(sizeof(struct g));            
          tc   =(struct g *)malloc(sizeof(struct g));
          tc->c=32767;
          for (i=0; i<11; i++) tc->a[i]='z'; 
  ut.ta=tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**(1)** OK\n");
          else                  printf("**(1)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
  tc=ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(2)** OK\n");
          else                  printf("**(2)** NG tc->c=%d tc->a[i-1]=%c\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct h));            
          sc   =(struct h *)malloc(sizeof(struct h));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  ut.sa=sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**(3)** OK\n");
          else                  printf("**(3)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  sc=ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(4)** OK\n");
          else                  printf("**(4)** NG sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<10; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**(5)** OK\n");
          else                  printf("**(5)** NG uz.rc.a[i-1]=%c\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**(6)** OK\n");
          else                  printf("**(6)** NG ut.rb.a[i-1]=%c\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<11; i++) uz.ta->a[i]='x'; 
  ut.ta=uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**(7)** OK\n");
          else                  printf("**(7)** NG ut.tb->c=%d ut.tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  ut.sa=uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**(8)** OK\n");
          else                  printf("**(8)** NG ut.sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   = (struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<11; i++) etc->a[i]='h'; 
  ut.ta=etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**(9)** OK\n");
          else                  printf("**(9)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  ut.sa=esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**(10)** OK\n");
          else                  printf("**(10)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  }
 printf("**** START-(2)\n");
 {
 struct g {
            int  c;
            char a[11];
           };
 struct h {
            short int  c;
            char a[10];
           };
 struct k {
            char a[10];
           };
 int      i;
 struct g *etc;
 struct h *esc;
  union {
         struct g *ta;
         struct h *sa;
         struct k  ra;
         int       t;       
         struct h *sb;
         struct g *tb;
         struct k  rb;
        } ut;
  struct g *tc,*utsave;
  struct h *sc,*ussave;
  union {
         char       u;       
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
        } uz;
          utsave=ut.ta=(struct g *)malloc(sizeof(struct g));            
          tc   =(struct g *)malloc(sizeof(struct g));
          tc->c=32767;
          for (i=0; i<11; i++) tc->a[i]='z'; 
  ut.ta=tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**(1)** OK\n");
          else                  printf("**(1)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
  tc=ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(2)** OK\n");
          else                  printf("**(2)** NG tc->c=%d tc->a[i-1]=%c\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct h));            
          sc   =(struct h *)malloc(sizeof(struct h));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  ut.sa=sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**(3)** OK\n");
          else                  printf("**(3)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  sc=ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(4)** OK\n");
          else                  printf("**(4)** NG sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<10; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**(5)** OK\n");
          else                  printf("**(5)** NG uz.rc.a[i-1]=%c\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**(6)** OK\n");
          else                  printf("**(6)** NG ut.rb.a[i-1]=%c\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<11; i++) uz.ta->a[i]='x'; 
  ut.ta=uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**(7)** OK\n");
          else                  printf("**(7)** NG ut.tb->c=%d ut.tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  ut.sa=uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**(8)** OK\n");
          else                  printf("**(8)** NG ut.sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   =(struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<11; i++) etc->a[i]='h'; 
  ut.ta=etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**(9)** OK\n");
          else                  printf("**(9)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  ut.sa=esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**(10)** OK\n");
          else                  printf("**(10)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  }
 printf("**** START-(2)\n");
 {
 struct g {
            int  c;
            char a[11];
           };
 struct h {
            short int  c;
            char a[10];
           };
 struct k {
            char a[10];
           };
 int      i;
 struct g *etc;
 struct h *esc;
  union {
         struct g *ta;
         struct h *sa;
         struct k  ra;
         int       t;       
         struct h *sb;
         struct g *tb;
         struct k  rb;
        } ut;
  struct g *tc,*utsave;
  struct h *sc,*ussave;
  union {
         char       u;       
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
        } uz;
          utsave=ut.ta=(struct g *)malloc(sizeof(struct g));            
          tc   =(struct g *)malloc(sizeof(struct g));
          tc->c=32767;
          for (i=0; i<11; i++) tc->a[i]='z'; 
  ut.ta=tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**(1)** OK\n");
          else                  printf("**(1)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
  tc=ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(2)** OK\n");
          else                  printf("**(2)** NG tc->c=%d tc->a[i-1]=%c\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct h));            
          sc   =(struct h *)malloc(sizeof(struct h));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  ut.sa=sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**(3)** OK\n");
          else                  printf("**(3)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  sc=ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(4)** OK\n");
          else                  printf("**(4)** NG sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<10; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**(5)** OK\n");
          else                  printf("**(5)** NG uz.rc.a[i-1]=%c\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**(6)** OK\n");
          else                  printf("**(6)** NG ut.rb.a[i-1]=%c\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<11; i++) uz.ta->a[i]='x'; 
  ut.ta=uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**(7)** OK\n");
          else                  printf("**(7)** NG ut.tb->c=%d ut.tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  ut.sa=uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**(8)** OK\n");
          else                  printf("**(8)** NG ut.sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   =(struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<11; i++) etc->a[i]='h'; 
  ut.ta=etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**(9)** OK\n");
          else                  printf("**(9)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  ut.sa=esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**(10)** OK\n");
          else                  printf("**(10)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  }
 printf("**** START-(3)\n");
 {
 struct g {
            int  c;
            char a[11];
           };
 struct h {
            short int  c;
            char a[10];
           };
 struct k {
            char a[10];
           };
 int      i;
 struct g *etc;
 struct h *esc;
  union {
         struct g *ta;
         struct h *sa;
         struct k  ra;
         int       t;       
         struct h *sb;
         struct g *tb;
         struct k  rb;
        } ut;
  struct g *tc,*utsave;
  struct h *sc,*ussave;
  union {
         char       u;       
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
        } uz;
          utsave=ut.ta=(struct g *)malloc(sizeof(struct g));            
          tc   =(struct g *)malloc(sizeof(struct g));
          tc->c=32767;
          for (i=0; i<11; i++) tc->a[i]='z'; 
  ut.ta=tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**(1)** OK\n");
          else                  printf("**(1)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
  tc=ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(2)** OK\n");
          else                  printf("**(2)** NG tc->c=%d tc->a[i-1]=%c\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct h));            
          sc   =(struct h *)malloc(sizeof(struct h));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  ut.sa=sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**(3)** OK\n");
          else                  printf("**(3)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  sc=ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(4)** OK\n");
          else                  printf("**(4)** NG sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<10; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**(5)** OK\n");
          else                  printf("**(5)** NG uz.rc.a[i-1]=%c\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**(6)** OK\n");
          else                  printf("**(6)** NG ut.rb.a[i-1]=%c\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<11; i++) uz.ta->a[i]='x'; 
  ut.ta=uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**(7)** OK\n");
          else                  printf("**(7)** NG ut.tb->c=%d ut.tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  ut.sa=uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**(8)** OK\n");
          else                  printf("**(8)** NG ut.sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   =(struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<11; i++) etc->a[i]='h'; 
  ut.ta=etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**(9)** OK\n");
          else                  printf("**(9)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  ut.sa=esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**(10)** OK\n");
          else                  printf("**(10)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  }
 printf("**** START-(4)\n");
 {
 struct g {
            int  c;
            char a[11];
           };
 struct h {
            short int  c;
            char a[10];
           };
 struct k {
            char a[10];
           };
 int      i;
 struct g *etc;
 struct h *esc;
  union {
         struct g *ta;
         struct h *sa;
         struct k  ra;
         int       t;       
         struct h *sb;
         struct g *tb;
         struct k  rb;
        } ut;
  struct g *tc,*utsave;
  struct h *sc,*ussave;
  union {
         char       u;       
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
        } uz;
          utsave=ut.ta=(struct g *)malloc(sizeof(struct g));            
          tc   =(struct g *)malloc(sizeof(struct g));
          tc->c=32767;
          for (i=0; i<11; i++) tc->a[i]='z'; 
  ut.ta=tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**(1)** OK\n");
          else                  printf("**(1)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
  tc=ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(2)** OK\n");
          else                  printf("**(2)** NG tc->c=%d tc->a[i-1]=%c\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct h));            
          sc   =(struct h *)malloc(sizeof(struct h));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  ut.sa=sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**(3)** OK\n");
          else                  printf("**(3)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  sc=ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(4)** OK\n");
          else                  printf("**(4)** NG sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<10; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**(5)** OK\n");
          else                  printf("**(5)** NG uz.rc.a[i-1]=%c\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**(6)** OK\n");
          else                  printf("**(6)** NG ut.rb.a[i-1]=%c\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<11; i++) uz.ta->a[i]='x'; 
  ut.ta=uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**(7)** OK\n");
          else                  printf("**(7)** NG ut.tb->c=%d ut.tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  ut.sa=uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**(8)** OK\n");
          else                  printf("**(8)** NG ut.sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   =(struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<11; i++) etc->a[i]='h'; 
  ut.ta=etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**(9)** OK\n");
          else                  printf("**(9)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  ut.sa=esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**(10)** OK\n");
          else                  printf("**(10)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  }
 printf("**** START-(5)\n");
 {
 struct g {
            int  c;
            char a[11];
           };
 struct h {
            short int  c;
            char a[10];
           };
 struct k {
            char a[10];
           };
 int      i;
 struct g *etc;
 struct h *esc;
  union {
         struct g *ta;
         struct h *sa;
         struct k  ra;
         int       t;       
         struct h *sb;
         struct g *tb;
         struct k  rb;
        } ut;
  struct g *tc,*utsave;
  struct h *sc,*ussave;
  union {
         char       u;       
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
        } uz;
          utsave=ut.ta=(struct g *)malloc(sizeof(struct g));            
          tc   =(struct g *)malloc(sizeof(struct g));
          tc->c=32767;
          for (i=0; i<11; i++) tc->a[i]='z'; 
  ut.ta=tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**(1)** OK\n");
          else                  printf("**(1)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
  tc=ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(2)** OK\n");
          else                  printf("**(2)** NG tc->c=%d tc->a[i-1]=%c\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct h));            
          sc   =(struct h *)malloc(sizeof(struct h));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  ut.sa=sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**(3)** OK\n");
          else                  printf("**(3)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  sc=ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(4)** OK\n");
          else                  printf("**(4)** NG sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<10; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**(5)** OK\n");
          else                  printf("**(5)** NG uz.rc.a[i-1]=%c\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**(6)** OK\n");
          else                  printf("**(6)** NG ut.rb.a[i-1]=%c\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<11; i++) uz.ta->a[i]='x'; 
  ut.ta=uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**(7)** OK\n");
          else                  printf("**(7)** NG ut.tb->c=%d ut.tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  ut.sa=uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**(8)** OK\n");
          else                  printf("**(8)** NG ut.sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   =(struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<11; i++) etc->a[i]='h'; 
  ut.ta=etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**(9)** OK\n");
          else                  printf("**(9)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  ut.sa=esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**(10)** OK\n");
          else                  printf("**(10)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  }
 printf("**** START-(6)\n");
 {
 struct g {
            int  c;
            char a[11];
           };
 struct h {
            short int  c;
            char a[10];
           };
 struct k {
            char a[10];
           };
 int      i;
 struct g *etc;
 struct h *esc;
  union {
         struct g *ta;
         struct h *sa;
         struct k  ra;
         int       t;       
         struct h *sb;
         struct g *tb;
         struct k  rb;
        } ut;
  struct g *tc,*utsave;
  struct h *sc,*ussave;
  union {
         char       u;       
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
        } uz;
          utsave=ut.ta=(struct g *)malloc(sizeof(struct g));            
          tc   =(struct g *)malloc(sizeof(struct g));
          tc->c=32767;
          for (i=0; i<11; i++) tc->a[i]='z'; 
  ut.ta=tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**(1)** OK\n");
          else                  printf("**(1)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
  tc=ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(2)** OK\n");
          else                  printf("**(2)** NG tc->c=%d tc->a[i-1]=%c\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct h));            
          sc   =(struct h *)malloc(sizeof(struct h));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  ut.sa=sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**(3)** OK\n");
          else                  printf("**(3)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  sc=ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(4)** OK\n");
          else                  printf("**(4)** NG sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<10; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**(5)** OK\n");
          else                  printf("**(5)** NG uz.rc.a[i-1]=%c\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**(6)** OK\n");
          else                  printf("**(6)** NG ut.rb.a[i-1]=%c\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<11; i++) uz.ta->a[i]='x'; 
  ut.ta=uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**(7)** OK\n");
          else                  printf("**(7)** NG ut.tb->c=%d ut.tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  ut.sa=uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**(8)** OK\n");
          else                  printf("**(8)** NG ut.sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   =(struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<11; i++) etc->a[i]='h'; 
  ut.ta=etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**(9)** OK\n");
          else                  printf("**(9)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  ut.sa=esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**(10)** OK\n");
          else                  printf("**(10)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  }
 printf("**** START-(7)\n");
 {
 struct g {
            int  c;
            char a[11];
           };
 struct h {
            short int  c;
            char a[10];
           };
 struct k {
            char a[10];
           };
 int      i;
 struct g *etc;
 struct h *esc;
  union {
         struct g *ta;
         struct h *sa;
         struct k  ra;
         int       t;       
         struct h *sb;
         struct g *tb;
         struct k  rb;
        } ut;
  struct g *tc,*utsave;
  struct h *sc,*ussave;
  union {
         char       u;       
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
        } uz;
          utsave=ut.ta=(struct g *)malloc(sizeof(struct g));            
          tc   =(struct g *)malloc(sizeof(struct g));
          tc->c=32767;
          for (i=0; i<11; i++) tc->a[i]='z'; 
  ut.ta=tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**(1)** OK\n");
          else                  printf("**(1)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
  tc=ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(2)** OK\n");
          else                  printf("**(2)** NG tc->c=%d tc->a[i-1]=%c\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct h));            
          sc   =(struct h *)malloc(sizeof(struct h));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  ut.sa=sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**(3)** OK\n");
          else                  printf("**(3)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  sc=ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(4)** OK\n");
          else                  printf("**(4)** NG sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<10; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**(5)** OK\n");
          else                  printf("**(5)** NG uz.rc.a[i-1]=%c\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**(6)** OK\n");
          else                  printf("**(6)** NG ut.rb.a[i-1]=%c\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<11; i++) uz.ta->a[i]='x'; 
  ut.ta=uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**(7)** OK\n");
          else                  printf("**(7)** NG ut.tb->c=%d ut.tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  ut.sa=uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**(8)** OK\n");
          else                  printf("**(8)** NG ut.sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   =(struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<11; i++) etc->a[i]='h'; 
  ut.ta=etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**(9)** OK\n");
          else                  printf("**(9)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  ut.sa=esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**(10)** OK\n");
          else                  printf("**(10)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  }
 printf("**** START-(8)\n");
 {
 struct g {
            int  c;
            char a[11];
           };
 struct h {
            short int  c;
            char a[10];
           };
 struct k {
            char a[10];
           };
 int      i;
 struct g *etc;
 struct h *esc;
  union {
         struct g *ta;
         struct h *sa;
         struct k  ra;
         int       t;       
         struct h *sb;
         struct g *tb;
         struct k  rb;
        } ut;
  struct g *tc,*utsave;
  struct h *sc,*ussave;
  union {
         char       u;       
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
        } uz;
          utsave=ut.ta=(struct g *)malloc(sizeof(struct g));            
          tc   =(struct g *)malloc(sizeof(struct g));
          tc->c=32767;
          for (i=0; i<11; i++) tc->a[i]='z'; 
  ut.ta=tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**(1)** OK\n");
          else                  printf("**(1)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
  tc=ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(2)** OK\n");
          else                  printf("**(2)** NG tc->c=%d tc->a[i-1]=%c\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct h));            
          sc   =(struct h *)malloc(sizeof(struct h));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  ut.sa=sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**(3)** OK\n");
          else                  printf("**(3)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  sc=ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(4)** OK\n");
          else                  printf("**(4)** NG sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<10; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**(5)** OK\n");
          else                  printf("**(5)** NG uz.rc.a[i-1]=%c\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**(6)** OK\n");
          else                  printf("**(6)** NG ut.rb.a[i-1]=%c\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<11; i++) uz.ta->a[i]='x'; 
  ut.ta=uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**(7)** OK\n");
          else                  printf("**(7)** NG ut.tb->c=%d ut.tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  ut.sa=uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**(8)** OK\n");
          else                  printf("**(8)** NG ut.sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   =(struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<11; i++) etc->a[i]='h'; 
  ut.ta=etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**(9)** OK\n");
          else                  printf("**(9)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  ut.sa=esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**(10)** OK\n");
          else                  printf("**(10)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  }
 printf("**** START-(9)\n");
 {
 struct g {
            int  c;
            char a[11];
           };
 struct h {
            short int  c;
            char a[10];
           };
 struct k {
            char a[10];
           };
 int      i;
 struct g *etc;
 struct h *esc;
  union {
         struct g *ta;
         struct h *sa;
         struct k  ra;
         int       t;       
         struct h *sb;
         struct g *tb;
         struct k  rb;
        } ut;
  struct g *tc,*utsave;
  struct h *sc,*ussave;
  union {
         char       u;       
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
        } uz;
          utsave=ut.ta=(struct g *)malloc(sizeof(struct g));            
          tc   =(struct g *)malloc(sizeof(struct g));
          tc->c=32767;
          for (i=0; i<11; i++) tc->a[i]='z'; 
  ut.ta=tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**(1)** OK\n");
          else                  printf("**(1)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
  tc=ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(2)** OK\n");
          else                  printf("**(2)** NG tc->c=%d tc->a[i-1]=%c\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct h));            
          sc   =(struct h *)malloc(sizeof(struct h));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  ut.sa=sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**(3)** OK\n");
          else                  printf("**(3)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  sc=ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(4)** OK\n");
          else                  printf("**(4)** NG sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<10; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**(5)** OK\n");
          else                  printf("**(5)** NG uz.rc.a[i-1]=%c\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**(6)** OK\n");
          else                  printf("**(6)** NG ut.rb.a[i-1]=%c\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<11; i++) uz.ta->a[i]='x'; 
  ut.ta=uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**(7)** OK\n");
          else                  printf("**(7)** NG ut.tb->c=%d ut.tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  ut.sa=uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**(8)** OK\n");
          else                  printf("**(8)** NG ut.sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   =(struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<11; i++) etc->a[i]='h'; 
  ut.ta=etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**(9)** OK\n");
          else                  printf("**(9)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  ut.sa=esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**(10)** OK\n");
          else                  printf("**(10)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  }
 printf("**** START-(10)\n");
 {
 struct g {
            int  c;
            char a[11];
           };
 struct h {
            short int  c;
            char a[10];
           };
 struct k {
            char a[10];
           };
 int      i;
 struct g *etc;
 struct h *esc;
  union {
         struct g *ta;
         struct h *sa;
         struct k  ra;
         int       t;       
         struct h *sb;
         struct g *tb;
         struct k  rb;
        } ut;
  struct g *tc,*utsave;
  struct h *sc,*ussave;
  union {
         char       u;       
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
        } uz;
          utsave=ut.ta=(struct g *)malloc(sizeof(struct g));            
          tc   =(struct g *)malloc(sizeof(struct g));
          tc->c=32767;
          for (i=0; i<11; i++) tc->a[i]='z'; 
  ut.ta=tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**(1)** OK\n");
          else                  printf("**(1)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
  tc=ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(2)** OK\n");
          else                  printf("**(2)** NG tc->c=%d tc->a[i-1]=%c\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct h));            
          sc   =(struct h *)malloc(sizeof(struct h));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  ut.sa=sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**(3)** OK\n");
          else                  printf("**(3)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  sc=ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(4)** OK\n");
          else                  printf("**(4)** NG sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<10; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**(5)** OK\n");
          else                  printf("**(5)** NG uz.rc.a[i-1]=%c\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**(6)** OK\n");
          else                  printf("**(6)** NG ut.rb.a[i-1]=%c\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<11; i++) uz.ta->a[i]='x'; 
  ut.ta=uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**(7)** OK\n");
          else                  printf("**(7)** NG ut.tb->c=%d ut.tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  ut.sa=uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**(8)** OK\n");
          else                  printf("**(8)** NG ut.sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   =(struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<11; i++) etc->a[i]='h'; 
  ut.ta=etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**(9)** OK\n");
          else                  printf("**(9)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  ut.sa=esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**(10)** OK\n");
          else                  printf("**(10)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  }
 printf("**** START-(11)\n");
 {
 struct g {
            int  c;
            char a[11];
           };
 struct h {
            short int  c;
            char a[10];
           };
 struct k {
            char a[10];
           };
 int      i;
 struct g *etc;
 struct h *esc;
  union {
         struct g *ta;
         struct h *sa;
         struct k  ra;
         int       t;       
         struct h *sb;
         struct g *tb;
         struct k  rb;
        } ut;
  struct g *tc,*utsave;
  struct h *sc,*ussave;
  union {
         char       u;       
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
        } uz;
          utsave=ut.ta=(struct g *)malloc(sizeof(struct g));            
          tc   =(struct g *)malloc(sizeof(struct g));
          tc->c=32767;
          for (i=0; i<11; i++) tc->a[i]='z'; 
  ut.ta=tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**(1)** OK\n");
          else                  printf("**(1)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
  tc=ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(2)** OK\n");
          else                  printf("**(2)** NG tc->c=%d tc->a[i-1]=%c\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct h));            
          sc   =(struct h *)malloc(sizeof(struct h));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  ut.sa=sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**(3)** OK\n");
          else                  printf("**(3)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  sc=ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(4)** OK\n");
          else                  printf("**(4)** NG sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<10; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**(5)** OK\n");
          else                  printf("**(5)** NG uz.rc.a[i-1]=%c\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**(6)** OK\n");
          else                  printf("**(6)** NG ut.rb.a[i-1]=%c\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<11; i++) uz.ta->a[i]='x'; 
  ut.ta=uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**(7)** OK\n");
          else                  printf("**(7)** NG ut.tb->c=%d ut.tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  ut.sa=uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**(8)** OK\n");
          else                  printf("**(8)** NG ut.sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   =(struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<11; i++) etc->a[i]='h'; 
  ut.ta=etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**(9)** OK\n");
          else                  printf("**(9)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  ut.sa=esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**(10)** OK\n");
          else                  printf("**(10)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  }
 printf("**** START-(12)\n");
 {
 struct g {
            int  c;
            char a[11];
           };
 struct h {
            short int  c;
            char a[10];
           };
 struct k {
            char a[10];
           };
 int      i;
 struct g *etc;
 struct h *esc;
  union {
         struct g *ta;
         struct h *sa;
         struct k  ra;
         int       t;       
         struct h *sb;
         struct g *tb;
         struct k  rb;
        } ut;
  struct g *tc,*utsave;
  struct h *sc,*ussave;
  union {
         char       u;       
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
        } uz;
          utsave=ut.ta=(struct g *)malloc(sizeof(struct g));            
          tc   =(struct g *)malloc(sizeof(struct g));
          tc->c=32767;
          for (i=0; i<11; i++) tc->a[i]='z'; 
  ut.ta=tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**(1)** OK\n");
          else                  printf("**(1)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
  tc=ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(2)** OK\n");
          else                  printf("**(2)** NG tc->c=%d tc->a[i-1]=%c\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct h));            
          sc   =(struct h *)malloc(sizeof(struct h));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  ut.sa=sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**(3)** OK\n");
          else                  printf("**(3)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  sc=ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(4)** OK\n");
          else                  printf("**(4)** NG sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<10; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**(5)** OK\n");
          else                  printf("**(5)** NG uz.rc.a[i-1]=%c\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**(6)** OK\n");
          else                  printf("**(6)** NG ut.rb.a[i-1]=%c\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<11; i++) uz.ta->a[i]='x'; 
  ut.ta=uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**(7)** OK\n");
          else                  printf("**(7)** NG ut.tb->c=%d ut.tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  ut.sa=uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**(8)** OK\n");
          else                  printf("**(8)** NG ut.sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   =(struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<11; i++) etc->a[i]='h'; 
  ut.ta=etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**(9)** OK\n");
          else                  printf("**(9)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  ut.sa=esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**(10)** OK\n");
          else                  printf("**(10)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  }
 printf("**** START-(13)\n");
 {
 struct g {
            int  c;
            char a[11];
           };
 struct h {
            short int  c;
            char a[10];
           };
 struct k {
            char a[10];
           };
 int      i;
 struct g *etc;
 struct h *esc;
  union {
         struct g *ta;
         struct h *sa;
         struct k  ra;
         int       t;       
         struct h *sb;
         struct g *tb;
         struct k  rb;
        } ut;
  struct g *tc,*utsave;
  struct h *sc,*ussave;
  union {
         char       u;       
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
        } uz;
          utsave=ut.ta=(struct g *)malloc(sizeof(struct g));            
          tc   =(struct g *)malloc(sizeof(struct g));
          tc->c=32767;
          for (i=0; i<11; i++) tc->a[i]='z'; 
  ut.ta=tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**(1)** OK\n");
          else                  printf("**(1)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
  tc=ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(2)** OK\n");
          else                  printf("**(2)** NG tc->c=%d tc->a[i-1]=%c\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct h));            
          sc   =(struct h *)malloc(sizeof(struct h));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  ut.sa=sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**(3)** OK\n");
          else                  printf("**(3)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  sc=ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(4)** OK\n");
          else                  printf("**(4)** NG sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<10; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**(5)** OK\n");
          else                  printf("**(5)** NG uz.rc.a[i-1]=%c\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**(6)** OK\n");
          else                  printf("**(6)** NG ut.rb.a[i-1]=%c\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<11; i++) uz.ta->a[i]='x'; 
  ut.ta=uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**(7)** OK\n");
          else                  printf("**(7)** NG ut.tb->c=%d ut.tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  ut.sa=uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**(8)** OK\n");
          else                  printf("**(8)** NG ut.sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   =(struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<11; i++) etc->a[i]='h'; 
  ut.ta=etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**(9)** OK\n");
          else                  printf("**(9)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  ut.sa=esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**(10)** OK\n");
          else                  printf("**(10)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  }
 printf("**** START-(14)\n");
 {
 struct g {
            int  c;
            char a[11];
           };
 struct h {
            short int  c;
            char a[10];
           };
 struct k {
            char a[10];
           };
 int      i;
 struct g *etc;
 struct h *esc;
  union {
         struct g *ta;
         struct h *sa;
         struct k  ra;
         int       t;       
         struct h *sb;
         struct g *tb;
         struct k  rb;
        } ut;
  struct g *tc,*utsave;
  struct h *sc,*ussave;
  union {
         char       u;       
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
        } uz;
          utsave=ut.ta=(struct g *)malloc(sizeof(struct g));            
          tc   =(struct g *)malloc(sizeof(struct g));
          tc->c=32767;
          for (i=0; i<11; i++) tc->a[i]='z'; 
  ut.ta=tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**(1)** OK\n");
          else                  printf("**(1)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
  tc=ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(2)** OK\n");
          else                  printf("**(2)** NG tc->c=%d tc->a[i-1]=%c\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct h));            
          sc   =(struct h *)malloc(sizeof(struct h));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  ut.sa=sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**(3)** OK\n");
          else                  printf("**(3)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  sc=ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(4)** OK\n");
          else                  printf("**(4)** NG sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<10; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**(5)** OK\n");
          else                  printf("**(5)** NG uz.rc.a[i-1]=%c\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**(6)** OK\n");
          else                  printf("**(6)** NG ut.rb.a[i-1]=%c\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<11; i++) uz.ta->a[i]='x'; 
  ut.ta=uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**(7)** OK\n");
          else                  printf("**(7)** NG ut.tb->c=%d ut.tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  ut.sa=uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**(8)** OK\n");
          else                  printf("**(8)** NG ut.sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   =(struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<11; i++) etc->a[i]='h'; 
  ut.ta=etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**(9)** OK\n");
          else                  printf("**(9)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  ut.sa=esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**(10)** OK\n");
          else                  printf("**(10)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  }
 printf("**** START-(15)\n");
 {
 struct g {
            int  c;
            char a[11];
           };
 struct h {
            short int  c;
            char a[10];
           };
 struct k {
            char a[10];
           };
 int      i;
 struct g *etc;
 struct h *esc;
  union {
         struct g *ta;
         struct h *sa;
         struct k  ra;
         int       t;       
         struct h *sb;
         struct g *tb;
         struct k  rb;
        } ut;
  struct g *tc,*utsave;
  struct h *sc,*ussave;
  union {
         char       u;       
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
        } uz;
          utsave=ut.ta=(struct g *)malloc(sizeof(struct g));            
          tc   =(struct g *)malloc(sizeof(struct g));
          tc->c=32767;
          for (i=0; i<11; i++) tc->a[i]='z'; 
  ut.ta=tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**(1)** OK\n");
          else                  printf("**(1)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
  tc=ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(2)** OK\n");
          else                  printf("**(2)** NG tc->c=%d tc->a[i-1]=%c\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct h));            
          sc   =(struct h *)malloc(sizeof(struct h));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  ut.sa=sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**(3)** OK\n");
          else                  printf("**(3)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  sc=ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(4)** OK\n");
          else                  printf("**(4)** NG sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<10; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**(5)** OK\n");
          else                  printf("**(5)** NG uz.rc.a[i-1]=%c\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**(6)** OK\n");
          else                  printf("**(6)** NG ut.rb.a[i-1]=%c\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<11; i++) uz.ta->a[i]='x'; 
  ut.ta=uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**(7)** OK\n");
          else                  printf("**(7)** NG ut.tb->c=%d ut.tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  ut.sa=uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**(8)** OK\n");
          else                  printf("**(8)** NG ut.sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   =(struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<11; i++) etc->a[i]='h'; 
  ut.ta=etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**(9)** OK\n");
          else                  printf("**(9)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  ut.sa=esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**(10)** OK\n");
          else                  printf("**(10)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
}
 printf("**** START-(16)\n");
 {
 struct g {
            int  c;
            char a[11];
           };
 struct h {
            short int  c;
            char a[10];
           };
 struct k {
            char a[10];
           };
 int      i;
 struct g *etc;
 struct h *esc;
  union {
         struct g *ta;
         struct h *sa;
         struct k  ra;
         int       t;       
         struct h *sb;
         struct g *tb;
         struct k  rb;
        } ut;
  struct g *tc,*utsave;
  struct h *sc,*ussave;
  union {
         char       u;       
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
        } uz;
          utsave=ut.ta=(struct g *)malloc(sizeof(struct g));            
          tc   =(struct g *)malloc(sizeof(struct g));
          tc->c=32767;
          for (i=0; i<11; i++) tc->a[i]='z'; 
  ut.ta=tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**(1)** OK\n");
          else                  printf("**(1)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
  tc=ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(2)** OK\n");
          else                  printf("**(2)** NG tc->c=%d tc->a[i-1]=%c\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct h));            
          sc   =(struct h *)malloc(sizeof(struct h));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  ut.sa=sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**(3)** OK\n");
          else                  printf("**(3)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  sc=ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(4)** OK\n");
          else                  printf("**(4)** NG sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<10; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**(5)** OK\n");
          else                  printf("**(5)** NG uz.rc.a[i-1]=%c\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**(6)** OK\n");
          else                  printf("**(6)** NG ut.rb.a[i-1]=%c\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<11; i++) uz.ta->a[i]='x'; 
  ut.ta=uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**(7)** OK\n");
          else                  printf("**(7)** NG ut.tb->c=%d ut.tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  ut.sa=uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**(8)** OK\n");
          else                  printf("**(8)** NG ut.sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   =(struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<11; i++) etc->a[i]='h'; 
  ut.ta=etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**(9)** OK\n");
          else                  printf("**(9)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  ut.sa=esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**(10)** OK\n");
          else                  printf("**(10)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  }
 printf("**** START-(17)\n");
 {
 struct g {
            int  c;
            char a[11];
           };
 struct h {
            short int  c;
            char a[10];
           };
 struct k {
            char a[10];
           };
 int      i;
 struct g *etc;
 struct h *esc;
  union {
         struct g *ta;
         struct h *sa;
         struct k  ra;
         int       t;       
         struct h *sb;
         struct g *tb;
         struct k  rb;
        } ut;
  struct g *tc,*utsave;
  struct h *sc,*ussave;
  union {
         char       u;       
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
        } uz;
          utsave=ut.ta=(struct g *)malloc(sizeof(struct g));            
          tc   =(struct g *)malloc(sizeof(struct g));
          tc->c=32767;
          for (i=0; i<11; i++) tc->a[i]='z'; 
  ut.ta=tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**(1)** OK\n");
          else                  printf("**(1)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
  tc=ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(2)** OK\n");
          else                  printf("**(2)** NG tc->c=%d tc->a[i-1]=%c\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct h));            
          sc   =(struct h *)malloc(sizeof(struct h));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  ut.sa=sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**(3)** OK\n");
          else                  printf("**(3)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  sc=ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(4)** OK\n");
          else                  printf("**(4)** NG sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<10; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**(5)** OK\n");
          else                  printf("**(5)** NG uz.rc.a[i-1]=%c\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**(6)** OK\n");
          else                  printf("**(6)** NG ut.rb.a[i-1]=%c\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<11; i++) uz.ta->a[i]='x'; 
  ut.ta=uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**(7)** OK\n");
          else                  printf("**(7)** NG ut.tb->c=%d ut.tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  ut.sa=uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**(8)** OK\n");
          else                  printf("**(8)** NG ut.sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   =(struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<11; i++) etc->a[i]='h'; 
  ut.ta=etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**(9)** OK\n");
          else                  printf("**(9)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  ut.sa=esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**(10)** OK\n");
          else                  printf("**(10)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  }
 printf("**** START-(18)\n");
 {
 struct g {
            int  c;
            char a[11];
           };
 struct h {
            short int  c;
            char a[10];
           };
 struct k {
            char a[10];
           };
 int      i;
 struct g *etc;
 struct h *esc;
  union {
         struct g *ta;
         struct h *sa;
         struct k  ra;
         int       t;       
         struct h *sb;
         struct g *tb;
         struct k  rb;
        } ut;
  struct g *tc,*utsave;
  struct h *sc,*ussave;
  union {
         char       u;       
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
        } uz;
          utsave=ut.ta=(struct g *)malloc(sizeof(struct g));            
          tc   =(struct g *)malloc(sizeof(struct g));
          tc->c=32767;
          for (i=0; i<11; i++) tc->a[i]='z'; 
  ut.ta=tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**(1)** OK\n");
          else                  printf("**(1)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
  tc=ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(2)** OK\n");
          else                  printf("**(2)** NG tc->c=%d tc->a[i-1]=%c\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct h));            
          sc   =(struct h *)malloc(sizeof(struct h));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  ut.sa=sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**(3)** OK\n");
          else                  printf("**(3)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  sc=ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(4)** OK\n");
          else                  printf("**(4)** NG sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<10; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**(5)** OK\n");
          else                  printf("**(5)** NG uz.rc.a[i-1]=%c\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**(6)** OK\n");
          else                  printf("**(6)** NG ut.rb.a[i-1]=%c\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<11; i++) uz.ta->a[i]='x'; 
  ut.ta=uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**(7)** OK\n");
          else                  printf("**(7)** NG ut.tb->c=%d ut.tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  ut.sa=uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**(8)** OK\n");
          else                  printf("**(8)** NG ut.sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   =(struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<11; i++) etc->a[i]='h'; 
  ut.ta=etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**(9)** OK\n");
          else                  printf("**(9)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  ut.sa=esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**(10)** OK\n");
          else                  printf("**(10)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  }
 printf("**** START-(19)\n");
 {
 struct g {
            int  c;
            char a[11];
           };
 struct h {
            short int  c;
            char a[10];
           };
 struct k {
            char a[10];
           };
 int      i;
 struct g *etc;
 struct h *esc;
  union {
         struct g *ta;
         struct h *sa;
         struct k  ra;
         int       t;       
         struct h *sb;
         struct g *tb;
         struct k  rb;
        } ut;
  struct g *tc,*utsave;
  struct h *sc,*ussave;
  union {
         char       u;       
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
        } uz;
          utsave=ut.ta=(struct g *)malloc(sizeof(struct g));            
          tc   =(struct g *)malloc(sizeof(struct g));
          tc->c=32767;
          for (i=0; i<11; i++) tc->a[i]='z'; 
  ut.ta=tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**(1)** OK\n");
          else                  printf("**(1)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
  tc=ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(2)** OK\n");
          else                  printf("**(2)** NG tc->c=%d tc->a[i-1]=%c\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct h));            
          sc   =(struct h *)malloc(sizeof(struct h));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  ut.sa=sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**(3)** OK\n");
          else                  printf("**(3)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  sc=ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(4)** OK\n");
          else                  printf("**(4)** NG sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<10; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**(5)** OK\n");
          else                  printf("**(5)** NG uz.rc.a[i-1]=%c\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**(6)** OK\n");
          else                  printf("**(6)** NG ut.rb.a[i-1]=%c\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<11; i++) uz.ta->a[i]='x'; 
  ut.ta=uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**(7)** OK\n");
          else                  printf("**(7)** NG ut.tb->c=%d ut.tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  ut.sa=uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**(8)** OK\n");
          else                  printf("**(8)** NG ut.sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   =(struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<11; i++) etc->a[i]='h'; 
  ut.ta=etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**(9)** OK\n");
          else                  printf("**(9)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  ut.sa=esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**(10)** OK\n");
          else                  printf("**(10)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  }
 printf("**** START-(20)\n");
 {
 struct g {
            int  c;
            char a[11];
           };
 struct h {
            short int  c;
            char a[10];
           };
 struct k {
            char a[10];
           };
 int      i;
 struct g *etc;
 struct h *esc;
  union {
         struct g *ta;
         struct h *sa;
         struct k  ra;
         int       t;       
         struct h *sb;
         struct g *tb;
         struct k  rb;
        } ut;
  struct g *tc,*utsave;
  struct h *sc,*ussave;
  union {
         char       u;       
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
        } uz;
          utsave=ut.ta=(struct g *)malloc(sizeof(struct g));            
          tc   =(struct g *)malloc(sizeof(struct g));
          tc->c=32767;
          for (i=0; i<11; i++) tc->a[i]='z'; 
  ut.ta=tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**(1)** OK\n");
          else                  printf("**(1)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
  tc=ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(2)** OK\n");
          else                  printf("**(2)** NG tc->c=%d tc->a[i-1]=%c\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct h));            
          sc   =(struct h *)malloc(sizeof(struct h));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  ut.sa=sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**(3)** OK\n");
          else                  printf("**(3)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  sc=ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**(4)** OK\n");
          else                  printf("**(4)** NG sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<10; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**(5)** OK\n");
          else                  printf("**(5)** NG uz.rc.a[i-1]=%c\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**(6)** OK\n");
          else                  printf("**(6)** NG ut.rb.a[i-1]=%c\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<11; i++) uz.ta->a[i]='x'; 
  ut.ta=uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**(7)** OK\n");
          else                  printf("**(7)** NG ut.tb->c=%d ut.tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  ut.sa=uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**(8)** OK\n");
          else                  printf("**(8)** NG ut.sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   =(struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<11; i++) etc->a[i]='h'; 
  ut.ta=etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**(9)** OK\n");
          else                  printf("**(9)** NG tb->c=%d tb->a[i-1]=%c\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  ut.sa=esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**(10)** OK\n");
          else                  printf("**(10)** NG tb->c=%d sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  }
                                printf("**** END\n");
exit (0);
  }
