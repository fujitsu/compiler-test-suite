#include  <stdio.h>

struct tag1 {
    int li[1500];
};

int  sub3(struct tag1  pst,
          int          pla[],
          int          *pli)
{
    int   i, sum;

    sum = *pli;
    for(i=0; i<1500; i++) {
        sum += pst.li[i]%10;
        sum += pla[i]%10;
    }
    return sum;
}

int  sub2(struct tag1  pst,
          int          pla[],
          int          *pli)
{
    return sub3(pst, pla, pli);
}

struct tag1 sub1(
          struct tag1  pst,
          int          pla[],
          int          *pli)
{
    int   i;

    *pli=100;
    for(i=0; i<1500; i++) {
        pst.li[i] = i;
        pla[i] = i;
    }
    return pst;
}
int main()
{
    struct tag1 st;
    int         li, lia[1500];
    int         cal, ans = 13600;

    printf(" *** START ***\n");
    st  = sub1(st, lia, &li);
    cal = sub2(st, lia, &li);
    if (cal == ans)
        printf("     **** OK ****\n");
    else {
        printf("     ???? NG ????\n");
        printf("       ANS = %d\n", ans);
        printf("       CAL = %d\n", cal);
    }
    printf(" ***  END  ***\n");
}
