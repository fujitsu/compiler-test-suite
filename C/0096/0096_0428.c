#include <stdlib.h>
#include  <stdio.h>

#include <stdio.h>
#include <string.h>
#include <memory.h>

   struct  st1  {
      int  st_a;
      int  st_b;
      int  st_c;
      struct st1 *st_nxt;
   };
#ifdef __STDC__
   int  vt(struct st1 *,char);
   int  ut(struct st1 *);
   int  ht(struct st1 *);
   void errpr(int);
#else
   int  vt();
   int  ut();
   int  ht();
   void errpr();
#endif
int 
main (void)
 {
    struct  st1  st[10], *stp;
    int          i,totlv,totlva,totlvb,totlvc,totlu,totlh;

    printf("***  start ***\n");
    for( i=0 ; i<10 ; i++ ){
       st[i].st_a = i;
       st[i].st_b = i+10;
       st[i].st_c = i*i;
       if(i==9)
         st[i].st_nxt = 0;
       else
         st[i].st_nxt = &st[i+1];
    }
    stp = st;
    totlva = vt(stp,'a');
    totlvb = vt(stp,'b');
    totlvc = vt(stp,'c');
    totlv  = totlva + totlvb + totlvc;
    totlu = 0;
    for( i=0 ; i<10 ; i++)
        totlu =totlu + ut(&st[i]);
    totlh = ht(st);

    if((totlv == totlu) && (totlu == totlh)){
       printf("     TOTLV = %d \n",totlv);
       printf("          TOTLVA = %d \n",totlva);
       printf("          TOTLVB = %d \n",totlvb);
       printf("          TOTLVC = %d \n",totlvc);
       printf("     TOTLU = %d \n",totlu);
       printf("     TOTLH = %d \n",totlh);
       printf("***   ok ***\n");
    } else {
       printf("   ** ng ng ng **\n");
       printf("     TOTLV = %d \n",totlv);
       printf("          TOTLVA = %d \n",totlva);
       printf("          TOTLVB = %d \n",totlvb);
       printf("          TOTLVC = %d \n",totlvc);
       printf("     TOTLU = %d \n",totlu);
       printf("     TOTLH = %d \n",totlh);
       printf("***   ng ***\n");
    }
}
#ifdef __STDC__
  int vt(struct st1 *ptr,char c)
#else
 vt(ptr,c)
struct st1 *ptr;char c;
#endif
 {
    int h;

     if(ptr == 0) errpr(1);
     switch(c){
       case 'a':
         for( h = 0 ; ptr != 0 ; ptr = ptr->st_nxt )
            h = h + ptr->st_a;
         return(h);
       case 'b':
         for( h = 0 ; ptr != 0 ; ptr = ptr->st_nxt )
            h = h + ptr->st_b;
         return(h);
       case 'c':
         for( h = 0 ; ptr != 0 ; ptr = ptr->st_nxt )
            h = h + ptr->st_c;
         return(h);
       default:
         errpr(2);
     }
 }

 int 
ut (struct st1 *st)
{
    int total;

       if(st == 0) errpr(3);
       total = st->st_a + st->st_b + st->st_c;
       return(total);
}

 int 
ht (struct st1 *st)
{
   int total,wt;
   struct st1 *pp;

   if(st == 0) errpr(4);
   total = 0;
   for(pp=st ; pp != 0 ; pp = pp->st_nxt){
      wt = pp->st_a + pp->st_b + pp->st_c;
      total = total + wt;
   }
   return(total);
}

 void 
errpr (int cd)
 {
      switch(cd){
        case 1:
        case 2:
          printf("  *** ng  in vt\n");
          break;
        case 3:
          printf("  *** ng  in ut\n");
          break;
        case 4:
          printf("  *** ng  in ht\n");
          break;
        default:
          cd = -1;
      }
      printf("***  ng *** code = %d",cd);
      exit(0);
 }
