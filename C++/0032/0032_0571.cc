





#include <stdio.h>

struct vector;

struct matrix{
    public:
        int mat[2][2];
        friend vector operator*(matrix&, vector&);
};

struct vector{
    public:
        int vec;
        friend vector operator*(matrix&, vector&);
};

vector operator*(matrix& x, vector& y)
{
    vector v;

    v.vec = x.mat[y.vec][y.vec+1];
    return v;
}
int main()
{
    vector v1,v2;
    matrix m;

    m.mat[0][0] = 0;
    m.mat[0][1] = 1;
    m.mat[1][0] = 2;
    m.mat[1][1] = 3;
    v1.vec = 0;

   v2 = m * v1;

   if( v2.vec == 1 )
        printf("ok\n");
    else
        printf("ng\n");
}

    
