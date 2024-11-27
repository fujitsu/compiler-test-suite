#include <stdio.h>
long long int id10[1];
int       db30[3][3][3];
int main()
{
        long long int i,j,k;
	long int IL1;

        id10[0] =1;
        i=1;
        for(j=2;j<3;j++ )
        {
            IL1= id10[0] ;
            db30[ IL1][i][j-1] =12345;             
            printf("%lx %llx %llx\n",IL1,i,j-1);
         }
        printf("%d\n",db30[1][1][1] );

        i=100;

}
