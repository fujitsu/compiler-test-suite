#include  <stdio.h>

 static int aaa[5]={1,2,3,4,5};
 struct st {
        int sti;
        char stc;
     };
int 
main (void)
 {
#ifdef __STDC__
     int func1( int *i );
#else
     int func1();
#endif
     struct st stfunc();
  
     static int bbb[5]={0,1,2,3,4};
     struct st sss;
     int i;
     sss.sti=0;
     sss.stc='a';
     sss = stfunc(sss,1);
     if((sss.sti!=1)||(sss.stc!='b')) {
        printf(" *** SSS - (1) NG *** SSS.STI=%d, SSS.STC=%c\n",
               sss.sti,sss.stc);
     } else {
        printf(" *** SSS - (1) OK *** \n");
     }
     if(!func1(bbb))
        printf(" *** BBB - OK ***\n");
     else{
        printf(" *** BBB - NG ***\n");
        for(i=0;i<5;printf("     BBB(%d)=%d,",i,bbb[i++]));
     }
     printf("\n *****  END *****\n");
 }
 int 
func1 (int *ccc)
 {
 
    int i=0;
    for( ; i<5 ; i++,ccc++) *ccc=*ccc+1;
    for(i=4 ; i>=0 ; i--)
       if(*(--ccc) != aaa[i]) return(1);
    return(0);
 }
 struct st 
stfunc (struct st s, int i)
 {
    s.sti += i;
    s.stc += i;
    return(s);
 }
