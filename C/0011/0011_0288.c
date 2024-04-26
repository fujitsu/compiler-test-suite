#include  <stdio.h>

static int sub1(int  dim[]), sub2(int  dim[]), sub3(int  dim[]), sub4(int  dim[]), sub5(int  dim[]);
static int sub6(int  dim[]), sub7(int  dim[]), sub8(int  dim[]), sub9(int  dim[]), sub10(int  dim[]);
static int sub11(int  dim[]),sub12(int  dim[]),sub13(int  dim[]),sub14(int  dim[]),sub15(int  dim[]);
static int sub16(int  dim[]),sub17(int  dim[]),sub18(int  dim[]),sub19(int  dim[]),sub20(int  dim[]);
int main()
{
    int dim[10],i;
    for(i=0;i<10;i++) {
      dim[i] = 1;
    }
  i=sub1(dim)+sub2(dim)+sub3(dim)+sub4(dim)+sub5(dim)+
    sub6(dim)+sub7(dim)+sub8(dim)+sub9(dim)+sub10(dim)+
    sub11(dim)+sub12(dim)+sub13(dim)+sub14(dim)+sub15(dim)+
    sub16(dim)+sub17(dim)+sub18(dim)+sub19(dim)+sub20(dim);
    if( i==200 && dim[9] == 30 ) {
      puts(" OK ");
    }
    else {
      puts(" NG ");
    }
}

static int sub1(int  dim[])
{
    int i;
    for(i=0;i<10;i++) {
      dim[i] = dim[i] + i;
    }
    return i;
}

static int sub2(int  dim[])
{
    int i;
    for(i=0;i<10;i++) {
      if( ( dim[i] = dim[i] + 1 ) == 0 ) break;
    }
    return i;
}

static int sub3(int  dim[])
{
    int i;
    for(i=0;i<10;i++) {
      if( ( dim[i] = dim[i] + 1 ) == 0 ) break;
    }
    for(i=0;i<10;i++) {
      if( ( dim[i] = dim[i] + 1 ) == 0 ) break;
    }
    return i;
}

int global;

static int sub4(int  dim[])
{
    for(global=0;global<10;global++) {
      dim[global] = dim[global] + 1;
    }
    return global;
}

static int sub5(int  dim[])
{
    volatile int i;
    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int sub6(int  dim[])
{
    static int i;
    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int sub7(int  dim[])
{
    register int i;
    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int sub8(int  dim[])
{
    float i;
    for(i=0.0;i<10.0;i++) {
      dim[(int )i] = dim[(int )i] + 1;
    }
    return (int )i;
}

static int sub9(int  dim[])
{
    double i;
    for(i=0.0;i<10.0;i++) {
      dim[(int )i] = dim[(int )i] + 1;
    }
    return (int )i;
}

static int sub10(int  dim[])
{
    struct tag {
      int i;
      int j;
    } str;

    for(str.i=0;str.i<10;str.i++) {
      dim[str.i] = dim[str.i] + 1;
    }
    return str.i;
}

static int sub11(int  dim[])
{
    union tag {
      int i;
      int j;
    } a;

    for(a.i=0;a.i<10;a.i++) {
      dim[a.i] = dim[a.i] + 1;
    }
    return a.i;
}

static int sub12(int  dim[])
{
    unsigned char  i;

    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int sub13(int  dim[])
{
    char  i;

    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int sub14(int  dim[])
{
    short int i;

    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int sub15(int  dim[])
{
    unsigned short int i;

    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int sub16(int  dim[])
{
    unsigned int i;

    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int sub17(int  dim[])
{
    struct {
      unsigned int i:31;
      unsigned int j:1;
    } a;

    for(a.i=0;a.i<10;a.i++) {
      dim[a.i] = dim[a.i] + 1;
    }
    return a.i;
}

static int sub18(int  dim[])
{
    char *i;

    for(i=(char *)0;i<(char *)10;i++) {
      dim[(int )i] = dim[(int )i] + 1;
    }
    return (int )i;
}

static int sub19(int  dim[])
{
    int *i,j;
    i=&j;

    for(*i=0;*i<10;(*i)++) {
      dim[*i] = dim[*i] + 1;
    }
    return *i;
}

static int sub20(int  dim[])
{
    int *i,j;
    i=&j;

    for(j=0;j<10;j++) {
      dim[j] = dim[j] + 1;
    }
    return j;
}

