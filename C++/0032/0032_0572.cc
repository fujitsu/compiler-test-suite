





#include <stdio.h>

union vector;

union matrix{
    public:
        int mat[2][2];
        friend vector operator*(matrix&, vector&);
};

union vector{
    public:
        int vec;
        friend vector operator*(matrix&, vector&);
};

vector operator*(matrix& x, vector& y)
{
    vector v;

    v.vec = x.mat[y.vec][y.vec];
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
    v1.vec = 1;

   v2 = m * v1;

   if( v2.vec == 3 )
        printf("ok\n");
    else
        printf("ng\n");
}

    
