#include  <stdio.h>
#include  <stdlib.h>
struct g {
            int  c;
            char a[61];
           };
struct h {
            int  c;
            char a[10];
           };
struct k {
            char a[255];
           };
int      i;
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
  struct h *sc;
  union {
         struct g *ta;
         struct h *sa;
         char       t;       
         struct k  rc;
         char       u;       
         struct h *sb;
         struct g *tb;
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
  
          free(utsave);
          free(tc);
}
