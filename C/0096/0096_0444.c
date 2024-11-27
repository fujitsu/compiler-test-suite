#include <string.h>
#include  <stdio.h>
struct dmytag
{
        int       a ;
        int       b ;
        char      c ;
        char      d ;
        short int e ;
        char      x ;
} ;
#ifdef __STDC__
	static void   fun1(struct dmytag *x,struct dmytag *y) ;
        static int    fun2(struct dmytag *x,struct dmytag *y) ;
#else
	static void   fun1();
        static int    fun2();
#endif
int main()
{
        struct dmytag  aa ;
        struct dmytag  bb ;
        struct dmytag *cc ;
        int            aaa,bbb ;
        cc    = &aa ;
        cc->a = 1 ;
        cc->b = 2 ;
        cc->c = 3 ;
        cc->d = 0 ;
        memset(cc,0,sizeof(struct dmytag)) ;
        if (cc->a != 0) {
         printf("***  ng *** %d \n",cc->a) ;
         }
        bb.a = cc->a++ ;
        bb.b = cc->b+2 ;
        bb.c = cc->c+3 ;
        bb.d = cc->d   ;
        aa.d = 4 ;
        aa.e = 5 ;
        fun1(&aa,&bb) ;
        aaa = fun2(&bb,&aa) ;
        if (aaa==strlen(&bb)
        && (bbb=memcmp(&bb,&aa,sizeof(struct dmytag)))==0) {
         printf("***  ok ***\n") ;
        } else {
         printf("***  ng *** %d \n",aaa) ;
         printf("                    %d \n",bbb) ;
        }
}
static void  fun1(x,y)
struct dmytag *x ;
struct dmytag *y ;
{
        x->a=1 ;
        strcpy (x,y);
        x->a+=1 ;
}
static int  fun2(x,y)
struct dmytag *x ;
struct dmytag *y ;
{
        y->a=x->a ;
        memcpy (y,x,sizeof(struct dmytag));
        x->a=y->a ;
        return strlen(y) ;
}
