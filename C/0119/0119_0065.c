#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

#include     <stdio.h>
#include     <string.h>
int main()
{
    static char            cha0[6] = "12345";
    static char            cha1[6] = "54321";
    static char            cha2[6];
    int             i;

    printf("---- scpa012 start ---- \n");

    for (i=0; i<5; i++) {
        switch (cha1[i]) {
            case '1':  memcpy(&cha2[0], &cha1[i], 1);
                       break;
            case '2':  memcpy(&cha2[1], &cha1[i], 1);
                       break;
            case '3':  memcpy(&cha2[2], &cha1[i], 1);
                       break;
            case '4':  memcpy(&cha2[3], &cha1[i], 1);
                       break;
            case '5':  memcpy(&cha2[4], &cha1[i], 1);
                       break;
            default :  printf (" --- ERROR ---\n");
                       break;
         }
    }
    cha2[5] = 0x00;

    if ( !memcmp(cha2, cha0, 6) )
        printf ("   ***  ok  *** \n");
    else {
        printf ("   ???  ng  ??? \n");
        printf ("     ans = %s\n", cha0);
        printf ("     cal = %s\n", cha2);
    }

    printf("---- scpa012  end  ---- \n");
exit (0);
}
