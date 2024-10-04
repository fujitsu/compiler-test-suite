#include <stdio.h>

 static char  ca[2][2][2][2][2][2][2]
                          [2][2][2][2][2][2]
          = { 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20 };
int main()
 {
 char  *************cap13,************cap12,***********cap11,
       **********cap10,*********cap9,********cap8,*******cap7,
       ******cap6,*****cap5,****cap4,***cap3,**cap2,*cap1;
 char (*a1)[2],(**aa1)[2],(*a2)[2][2],(**aa2)[2][2],
      *ap1[2],**app1[2],*ap2[2][2],**app2[2][2];

 printf(" ***  TEST START ****** \n");

 cap1 = (char *)ca;
 cap2 = &cap1; cap3 = &cap2; cap4 = &cap3; cap5 = &cap4;
 cap6 = &cap5; cap7 = &cap6; cap8 = &cap7; cap9 = &cap8;
 cap10 = &cap9; cap11 = &cap10; cap12 = &cap11; cap13 = &cap12;
 if (*************cap13 != 1 || *************ca != 1)
     printf(" ***  test 2  error *** \n");

 a1=(char (*)[])(ca[0][0][0][0][0][0][0][0][0]);
 if ((*a1)[0] != 1 || (*a1)[1] != 2 ||
     (*a1+5)[0] != 6 || **a1 != 1)
     printf(" ***  test 3  error *** \n");

 a1=(char (*)[])(ca[0][0][0][0][0][0][0][0][0]+1);
 if ((*a1)[0] != 9 || (*a1)[1] != 10 || (*a1+5)[0] != 14)
     printf(" ***  test 4  error *** \n");

 ap1[0] = (char *)ca;
 ap1[1] = (char *)ca[0][0][0][0][0][0][0][0][0];
 if (ap1[0] != ap1[1])
     printf(" ***  test 5  error *** \n");

 ap1[1] = *a1;
 if (*ap1[0] != 1 || *(ap1[0]+1) != 2 ||
     *ap1[1] != 9 || *(ap1[1]+1) != 10)
     printf(" ***  test 6  error *** \n");

 app1[0] = cap2;
 app1[1] = &(ap1[1]);
 if (**app1[0] != 1 || *(*app1[0]+1) != 2 ||
     app1[1][0][0] != 9 || *(**(app1+1)+1) != 10)
     printf(" ***  test 7  error *** \n");

 aa1 = (char (**)[])app1[1];
 if (***aa1 != 9 || (**aa1)[1] != 10 || *(*aa1[0]+2) != 11)
     printf(" ***  test 8  error *** \n");

 ap2[0][0] = ap1[1];
 if (*ap2[0][0] != 9 || ap2[0][0][1] != 10)
     printf(" ***  test 9  error *** \n");

 ap2[0][1] = cap1;
 if (ap2[0][1][0] != 1 || *(*(*ap2+1)+1) != 2)
     printf(" ***  test 10 error *** \n");

 (ap2+1)[0][0] = (char *)(*********ca+1);
 if (*ap2[1][0] != 9 || (**(ap2+1))[1] != 10)
     printf(" ***  test 11 error *** \n");

 (*(ap2+1))[1] = *a1;
 if (ap2[1][1][0] != 9 || *(*(*(ap2+1)+1)+1) != 10)
     printf(" ***  test 12 error *** \n");

 a2 = (char (*)[2][2])ap2[1][0];
 if ((*a2)[0][0] != 9 || (*a2)[0][1] != 10 ||
     (*a2)[1][0] != 11 || (*a2+1)[0][1] != 12)
     printf(" ***  test 13 error *** \n");

 app2[0][0] = cap2;
 if (****app2 != 1 || *(*app2[0][0]+1) != 2)
     printf(" ***  test 14 error *** \n");

 *(app2[0]+1) = &ap1[0];
 if (**app2[0][1] != 1 || **(app2[0][1]+1) != 9)
     printf(" ***  test 15 error *** \n");

 (app2+1)[0][0] = (char **)aa1;
 if (**app2[1][0] != 9 || *(***(app2+1)+1) != 10)
     printf(" ***  test 16 error *** \n");

 *(*(app2+1)+1) = &ap2[0][1];
 if (**app2[1][1] != 1 || *(**(*(app2+1)+1)+1) != 2)
     printf(" ***  test 17 error *** \n");

 printf(" ***  TEST END ****** \n");

 }
