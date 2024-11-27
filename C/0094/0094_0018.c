#include  <stdio.h>
#include  <stdlib.h>
struct g {
            int  c;
            char a[61];
           };
struct h {
            short int  c;
            char a[10];
           };
struct k {
            char a[255];
           };
int      i;
struct g *etc;
struct h *esc;
int main( ) {
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
          for (i=0; i<61; i++) tc->a[i]='z'; 
  *ut.ta=*tc;
          if (ut.tb->c    ==32767
           && ut.tb->a[i-1]=='z')
                                printf("**\n");
          else                  printf("**\n",ut.tb->c,ut.tb->a[i-1]);
  *tc=*ut.tb;
          if (tc->c    ==32767
           && tc->a[i-1]=='z')  printf("**\n");
          else                  printf("**\n",tc->c,tc->a[i-1]);
          ussave=ut.sa=(struct h *)malloc(sizeof(struct g));
          sc   =(struct h *)malloc(sizeof(struct g));
          sc->c=32767;
          for (i=0; i<10; i++) sc->a[i]='z'; 
  *ut.sa=*sc;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='z')
                                printf("**\n");
          else                  printf("**sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
  *sc=*ut.sb;
          if (sc->c    ==32767
           && tc->a[i-1]=='z')  printf("**\n");
          else                  printf("**sc->c=%d sc->a[i-1]=%c\n",sc->c,sc->a[i-1]);
          for (i=0; i<255; i++) ut.ra.a[i]='H'; 
  uz.rc=ut.ra;
          if (uz.rc.a[i-1]=='H')
                                printf("**\n");
          else                  printf("**\n",uz.rc.a[i-1]);
  ut.rb=uz.rc;
          if (ut.rb.a[i-1]=='H')
                                printf("**\n");
          else                  printf("**\n",ut.rb.a[i-1]);
          ut.ta=utsave;
          uz.ta=(struct g *)malloc(sizeof(struct g));            
          uz.ta->c=128;
          for (i=0; i<61; i++) uz.ta->a[i]='x'; 
  *ut.ta=*uz.ta;
          if (ut.tb->c    ==128 
           && ut.tb->a[i-1]=='x')
                                printf("**\n");
          else                  printf("**\n",ut.tb->c,ut.tb->a[i-1]);
          ut.sa=ussave;
          uz.sa=(struct h *)malloc(sizeof(struct h));            
          uz.sa->c=32767;
          for (i=0; i<10; i++) uz.sa->a[i]='d'; 
  *ut.sa=*uz.sa;
          if (ut.sb->c    ==32767
           && ut.sb->a[i-1]=='d')
                                printf("**\n");
          else                  printf("**sb->c=%d ut.sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
          etc   =(struct g *)malloc(sizeof(struct g));
          etc->c=0;
          for (i=0; i<61; i++) etc->a[i]='h'; 
  *ut.ta=*etc;
          if (ut.tb->c    ==0
           && ut.tb->a[i-1]=='h')
                                printf("**\n");
          else                  printf("**\n",ut.tb->c,ut.tb->a[i-1]);
          esc   =(struct h *)malloc(sizeof(struct h));
          esc->c=0;
          for (i=0; i<10; i++) esc->a[i]='t'; 
  *ut.sa=*esc;
          if (ut.sb->c    ==0
           && ut.sb->a[i-1]=='t')
                                printf("**\n");
          else                  printf("**sb->a[i-1]=%c\n",ut.sb->c,ut.sb->a[i-1]);
}
