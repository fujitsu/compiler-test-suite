#include  <stdio.h>

struct tag1 {
  char ch[4008];
};

int sub(struct tag1 pst, 
#ifdef NO_LONG_DOUBLE
double pld
#else
long double pld
#endif
)
{
    return (int)(pst.ch[0]*pld);
}
int main()
{
    struct tag1 st;
#ifdef NO_LONG_DOUBLE
    double ld;
#else
    long double ld;
#endif
    
    int sub(struct tag1 pst, 
#ifdef NO_LONG_DOUBLE
    double pld
#else
    long double pld
#endif
);

    printf(" --- start ---\n");
    st.ch[0] = 2;
    ld = 3.0;

    if (sub(st, ld)==6)
        printf("   **** ok ****\n");
    else
        printf("   ???? ng ????\n");
    printf(" ---  end  ---\n");
}
