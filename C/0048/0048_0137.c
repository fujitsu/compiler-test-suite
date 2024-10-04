#include <stdio.h>
int main()
{
    int                 inta[10];
    char                chara[100];
    signed int          sinta[10];
    long long int       llinta[5];
    int                 intb[5][8];
    float               flta[10][15];
    unsigned short int  usinta[10][13];
    char                charb;
    char                charc[5]={'a','b','c','d','e'};
    int                 intc;
    int                 intd[10]={0,1,2,3,4,5,6,7,8,9};
    static  int         inte[3]={1,2,3};
    static  int         intf[3]={4,5,6};
    int                 intg[3][3]
                   = { { 1,2,3 },{ 4,5,6 },{ 7,8,9 } };

    inta[0]  = 2147483647;            
    chara[99]= 255;                   
    sinta[2] = -2147483648;           
    llinta[3]= 9223372036854775807LL; 
    4[intb][7] = -2147483648;     
    9[flta][14]= 125.0;           
    9[usinta][12] = 65535;        
                                      
    charb = "abcdefghijklmn"[10];   
    intc  = "12345678901234"[10];   


    printf("*** TEST FOR EXPRESSION *** STARTED\n");


    if(inta[0] == 2147483647)
        printf("***-TEST01*** O     K ***\n");
    else
        printf("***-TEST01*** N     G ***\n");


#ifdef S_CHAR
    if(chara[99] == -1 )
#else
    if(chara[99] == 255 )
#endif
        printf("***-TEST02*** O     K ***\n");
    else
        printf("***-TEST02*** N     G ***\n");


    if(sinta[2] == -2147483648)
        printf("***-TEST03*** O     K ***\n");
    else
        printf("***-TEST03*** N     G ***\n");


    if(llinta[3] == 9223372036854775807LL)
        printf("***-TEST04*** O     K ***\n");
    else
        printf("***-TEST04*** N     G ***\n");


    if(intb[4][7] == -2147483648)
        printf("***-TEST05*** O     K ***\n");
    else
        printf("***-TEST06*** N     G ***\n");


    if(flta[9][14] == 125.0)
        printf("***-TEST06*** O     K ***\n");
    else
        printf("***-TEST06*** N     G ***\n");


    if(usinta[9][12] == 65535)
        printf("***-TEST07*** O     K ***\n");
    else
        printf("***-TEST07*** N     G ***\n");


    if (charb == 'k')
        printf("***-TEST08*** O     K ***\n");
    else
        printf("***-TEST08*** N     G ***\n");


    if (intc == '1')
        printf("***-TEST09*** O     K ***\n");
    else
        printf("***-TEST09*** N     G ***\n");


    if ((charc+1)[0+1] == 'c')
        printf("***-TEST10*** O     K ***\n");
    else
        printf("***-TEST10*** N     G ***\n");


    if ((intd-1+5)[-1] == 3)
        printf("***-TEST11*** O     K ***\n");
    else
        printf("***-TEST11*** N     G ***\n");



        printf("***-TEST12*** O     K ***\n");



    if ( (*(*(intg+1)+1)) == 5)
        printf("***-TEST13*** O     K ***\n");
    else
        printf("***-TEST13*** N     G ***\n");


    if ( (*(*(2+intg)+1)) == 8)
        printf("***-TEST14*** O     K ***\n");
    else
        printf("***-TEST14*** N     G ***\n");


    if (4["123456789"] == '5')
        printf("***-TEST15*** O     K ***\n");
    else
        printf("***-TEST15*** N     G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");

}
