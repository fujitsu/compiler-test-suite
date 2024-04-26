#include  <stdio.h>

struct TAG {
        int a;
        int b;
        int c;
};

struct TAG answer[10];

struct bit {
        unsigned int a:4;
        unsigned int b:4;
        unsigned int c:4;
};

struct bit answerb[10];
int subb( struct bit stb3, struct bit stb4 , struct bit *astb);
int sub3();
int sub( struct TAG st3, struct TAG st4 , struct TAG *ast);
int main()
{
        struct TAG st1;
        struct TAG st2;
        int i;

        st1.a = st1.b = st1.c = 1;
        answer[0] = st2 = st1;
        sub( st1 , st2 , &st2 );
        answer[1] = st1;
        answer[7] = st2;

        for(i=0;i<7;i++) {
              printf(" %d %d %d \n",  answer[i].a,
                                        answer[i].b,
                                        answer[i].c);
        }

        sub3();

        for(i=0;i<7;i++) {
              printf(" %d %d %d \n",  answerb[i].a,
                                        answerb[i].b,
                                        answerb[i].c);
        }

        {
                int sum=0;
                for(i=0;i<7;i++) {
                        sum += (answer[i].a ^ answerb[i].a);
                        sum += (answer[i].b ^ answerb[i].b);
                        sum += (answer[i].c ^ answerb[i].c);
                }
                printf(" %d \n",sum);
                if( sum == 0 ) puts(" OK ");
                else           puts(" NG ");
        }
}

int sub( struct TAG st3, struct TAG st4 , struct TAG *ast)
{
        struct TAG fun(struct TAG);

        ast->a = ast->b = ast->c = 9;  
        answer[2] = st4;             
        st3.a = st3.b = st3.c = 3;      
        st3.c = 7;
        answer[4] = (st4 = fun( (answer[3]= st3) ));
        ast->a = st4.a;
        ast->b = st4.b;
        ast->c = st4.c;
	return 0;
}

struct TAG fun( struct TAG st5 )
{
        struct TAG ret;

        answer[5] = st5;
        ret.a = st5.c;
        ret.b = ret.a + st5.a;
        ret.c = st5.a;
        return (answer[6]=ret);
}

int sub3()
{
        struct bit stb1;
        struct bit stb2;
        int i;

        stb1.a = stb1.b = stb1.c = 1;
        answerb[0] = stb2 = stb1;
        subb( stb1 , stb2 , &stb2 );
        answerb[1] = stb1;
        answerb[7] = stb2;
	return 0;
}

int subb( struct bit stb3, struct bit stb4 , struct bit *astb)
{
        struct bit funb(struct bit);

        astb->a = astb->b = astb->c = 9;  
        answerb[2] = stb4;              
        stb3.a = stb3.b = stb3.c = 3;     
        stb3.c = 7;
        answerb[4] = (stb4 = funb( (answerb[3]= stb3) ));
        astb->a = stb4.a;
        astb->b = stb4.b;
        astb->c = stb4.c;
	return 0;
}

struct bit funb( struct bit stb5 )
{
        struct bit retb;

        answerb[5] = stb5;
        retb.a = stb5.c;
        retb.b = retb.a + stb5.a;
        retb.c = stb5.a;
        return (answerb[6]=retb);
}
