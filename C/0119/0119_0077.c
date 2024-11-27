#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

struct tag1 {
  char ch[4008];
};

int sub(pst, pld)
struct tag1 pst;
long double pld;
{
    return (int)(pst.ch[0]*pld);
}
int main()
{
    struct tag1 st;
    long double ld;

    printf(" --- scpa033 start ---\n");
    st.ch[0] = 2;
    ld = 3.0;

    if (sub(st, ld)==6)
        printf("   **** ok ****\n");
    else
        printf("   ???? ng ????\n");
    printf(" --- scpa033  end  ---\n");
exit (0);
}
