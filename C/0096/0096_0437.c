#include  <stdio.h>

struct ste {
             int  sti[5];
             char stc;
             struct ste *nxt ;
           } st01[5 + 1] ;
static char string[]="abcde";
#ifdef __STDC__
int fun02(int);
int fun01(struct ste *,int);
void fun03(struct ste,struct ste *);
#else
int fun02();
int fun01();
void fun03();
#endif
int main()
{
   struct ste  st ;
   int         i01 , cd ;

   printf("*****  START *****\n");
   for(i01=0 ; i01<5 ; i01++){
                         
       st01[i01].nxt = (struct ste *) fun01(&st01[i01],i01);
                                  
       if( !(cd=fun02(st01[i01].sti[i01])) ){
            printf("If '-Keopt' is specified. OK.\n");
            printf("*** NG  %d   CODE = %d ***\n",i01,cd);
            
            fun03(st01[i01],&st01[i01+1]);
            break ;
       } else {
            printf("*** OK  %d ***\n",i01);
       }
   }
   printf("*****  END *****\n");
}
int fun01(str,i)
   struct ste *str ;
   int         i ;
{
   int    ii;
   for( ii=0 ; ii<5 ; str->sti[ii]=i,ii++ ) ;
   str->stc = string[i++] ;
   str++;
   return((int)str);
}
int fun02(i)
   int    i ;
{
   int    i01 ;
   char   c = 'a';
   for( i01=0 ; i01<5 ; i01++ ){
       if(st01[i].sti[i01]!=i) return(1);
   }
   if( st01[i].nxt!=&st01[i+1] ) return(2);
   if( st01[i--].stc!=c+i ) return(3);
   return(0);
}
void fun03(s,p)
   struct ste s;
   struct ste *p;
{
   int i=0;
   for(;i<5;printf("       st.sti[%d]    = %d  \n",i,s.sti[i++]));
   printf("       st.stc       = %c \n",s.stc);
   printf("       st.nxt       = %x \n",s.nxt);
   printf("       next address = %x \n",p);
   return;
}
