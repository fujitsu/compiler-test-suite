#include <stdio.h>
static void foo( s, charAttr )
register char *s ;
int           charAttr ;
{
        int      twinLine=0xff, singleLine=0xff, hexist=0 ;

        for ( ; *s; s++) {
            if ( (charAttr & 0x01) == 0) {
                twinLine   &= ((charAttr &  0x04 ) != 0);
                singleLine &= ((charAttr &  0x02 ) != 0);
                hexist     |= ((charAttr &  0x02 ) != 0);
            }
        }
        printf("%d, %d, %d\n",twinLine,singleLine,hexist ) ;
}
int main() { foo("abc", 0x06) ; }
