#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#include <stdio.h>
#define GRDMAX    20

struct  GRDTYP {
    int                ref;
    struct  GRDTYP    *grdtp;
} ggrd[GRDMAX];
int main()
{
    int             i;
    struct  GRDTYP    *wgrdtp;

    wgrdtp = ggrd;
    for ( i = 0; i < GRDMAX - 1; i++) {
        wgrdtp->ref = i+1;
        wgrdtp->grdtp = wgrdtp++;
    }
    wgrdtp->ref = 0;
    wgrdtp->grdtp = 0;

    for ( i = 0; i < GRDMAX; i++) {
        if(( ggrd[i].ref != (i + 1)) && ( ggrd[i].ref != 0 )){
                printf("SCQIH01  ERROR\n");
                return 0;
        }
    }
    printf("SCQIH01  PASS\n");
exit (0);
}
