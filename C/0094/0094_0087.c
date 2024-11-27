#include  <stdio.h>
int main() {
short    sa[10],sc ;
short *ps,*pc ;
void sset(),scset()  ;
long i ;

printf(" *****  ***** \n") ;

ps = &sa[0] ;
sset(ps) ;
pc = &sc ;
scset(pc) ;
printf(" sa= %d \n",sa[5]) ;
printf(" sc= %d \n",sc) ;

for ( pc = ps; pc==&sa[9]; pc++) {
  *pc = *pc + 1 ;
}

if ( sa[5] == 6 ) {
    printf(" OK \n") ;
} else {
    printf(" NG sa= %d \n",sa[5]) ;
}

}
void sset(ps)
short *ps ;
{
*ps = 1 ;
ps++ ;
*ps = 2 ;
ps++ ;
*ps = 3 ;
ps++ ;
*ps = 4 ;
ps++ ;
*ps = 5 ;
ps++ ;
*ps = 6 ;
ps++ ;
*ps = 7 ;
ps++ ;
*ps = 8 ;
ps++ ;
*ps = 9 ;
ps++ ;
*ps = 10 ;
}
void scset(ps)
short *ps ; 
{
 *ps = 1 ;
}

