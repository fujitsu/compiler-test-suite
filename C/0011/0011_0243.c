#include <stdio.h>
#include <math.h>

#define ARRAY_MAX 200

struct x {
    struct x    *right;
    struct x    *left;
    long int    member;
} s1[ARRAY_MAX], s2[ARRAY_MAX];

void rdmset();
void maktree();
void gettree();
int  chktree();
int main()
{
    int i;

    static struct x *sp = s1;
    rdmset();
    maktree();
    gettree();

    if( !chktree() )
        printf("NG.\n");
    else
        printf("PASS.\n");
}


void rdmset()
{
    double rand();
    int i;

    for (i = 0; i < ARRAY_MAX; ++i){
        s1[i].right = s1[i].left = 0;
        s1[i].member = rand();
    }
}


double rand()
{
    double c, k, ran;
    static double r = 12345678.0;

    c = 656329.0;
    k = 19.0;

    r = fmod((k * r + c), 100000001.0);
    ran = r / 100000000.0 * ARRAY_MAX;
    return (ran);
}


void maktree()
{
    void addtree(int n);
    int i;

    for (i = 1; i < ARRAY_MAX; ++i)
        addtree(i);
    return;
}


void addtree(int n)
{
    static struct x *sp = s1;

    if (n == 0)
        return;

    if (s1[n].member <= sp->member)
        if (sp->right == 0){
            sp->right = &s1[n];
            sp = s1;
            return;
        }
        else{
            sp = sp->right;
            addtree(n);
            return;
        }
    else
        if (sp->left == 0){
            sp->left = &s1[n];
            sp = s1;
            return;
        }
        else{
            sp = sp->left;
            addtree(n);
            return;
        }
}


void gettree()
{
    struct x *srctree(struct x *p);

    srctree(s1);
    return;
}

struct x *srctree(struct x *p)
{
    static int a_num = 0;

    if (p != 0){
        srctree(p->left);
        s2[a_num] = *p;
        ++a_num;
        srctree(p->right);
    }
    return 0;
}


int  chktree()
{
    int flag, i;

    flag = 1;
    for (i = 0; i < (ARRAY_MAX - 1); ++i)
        if (s2[i].member < s2[i+1].member)
            flag = 0;
    return(flag);
}
