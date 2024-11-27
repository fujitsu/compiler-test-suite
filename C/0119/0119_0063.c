#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
struct tag1 {
    long int    t1_li1;
};
struct tag2 {
    struct tag1 t2_tag1[3];
    long int    t2_li1[3];
};
long int     sub1(char,        long int,     struct tag1);
long int     sub2(char,        long int,     struct tag1);
long int     sub3(long int,    long int);

long int     cal[3], ans[3] = { 6, 17, 16 };
int main()
{
    char               ch1, cha1[3], *poch1;
    long int           li1, lia1[3], *poli1, *polia1[3];
    struct tag1        t1_st1, *potag11;
    struct tag2        t2_st1, *potag21;
    long int           i;

    printf("---- scpa007 start ---- \n");

    ch1 = 1;  li1 = 2;  t1_st1.t1_li1 = 3;
    poch1 = &ch1;        poli1 = &li1;
    potag11 = &t1_st1;   potag21 = &t2_st1;
    for (i=0; i<3; i++) {
        cha1[i] = i+1;
        lia1[i] = (i+1)*2;
        t2_st1.t2_tag1[i].t1_li1 = (i+1)*3;
        t2_st1.t2_li1[i] = (i+1)*4;
        polia1[i] = &lia1[i];
    }

    cal[0] = sub1(*poch1, *poli1, *potag11);
    cal[1] = sub2(cha1[*poch1],lia1[*poli1],
                                    t2_st1.t2_tag1[*poli1]);
    cal[2] = sub3(*polia1[*poch1], potag21->t2_li1[*poli1]);

    for (i=0; i<3; i++)
        if (cal[i] == ans[i])
            printf ("  %d: ***  ok  *** \n", i+1);
        else {
            printf ("  %d: ???  ng  ??? \n", i+1);
            printf ("       ans = %d\n", ans[i]);
            printf ("       cal = %d\n", cal[i]);
        }

    printf("---- scpa007  end  ---- \n");
exit (0);
}

long int sub1(
char           pch1,
long int       pli1,
struct tag1    pt1_st1)
{
    return (long int)(pch1+pli1+pt1_st1.t1_li1);
}
long int sub2(
char           pch1,
long int       pli1,
struct tag1    pt1_st1)
{
    return (long int)(pch1+pli1+pt1_st1.t1_li1);
}
long int  sub3(
long int      pli1,
long int      pli2)
{
    return (long int)(pli1+pli2);
}
