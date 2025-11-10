
















  #include <stdio.h>
  #include "001.h"



  int int_wk1;
  enum enumtag{ arg0, arg1, arg2, arg3, arg4,
                arg5, arg6, arg7, arg8, arg9 };



  enum enumtag func1(void);







enum enumtag func1(void)
{
  enum enumtag enumarg;

  for (enumarg = arg0; enumarg < arg9; enumarg++);
  return enumarg;
}




int main()
{




  header("","struct, union, and enum tag test proc.");



{
  typedef struct tnode TNODE;
  struct tnode {
    int count;
    TNODE *left,*right;
  };
  TNODE s1 = {1},*sp1 = &s1,s2 = {2},*sp2 = &s2,
        s3 = {3},*sp3 = &s3,s4 = {4},*sp4 = &s4,
        s5 = {5},*sp5 = &s5,s6 = {6},*sp6 = &s6,
        s7 = {7},*sp7 = &s7,s8 = {8},*sp8 = &s8,
        s9 = {9},*sp9 = &s9,s10 = {10},*sp10 = &s10,
        s11 = {11}, *sp11 = &s11;

   s11.left = sp11;
   s1.right = sp1;
   if ((s11.count == sp11->left->count) &&
       (s11.count == s11.left->count) &&
       (s1.count == sp1->right->count) &&
       (s1.count == s1.right->count))
     int_wk1 = 1;
   else 
     int_wk1 = 0;
   ichck("DTT01_01",1,int_wk1,"struct with area test");
}



{
  union uni2;
  union uni1{
    int uni1int;
    union uni2 *unip2;
  }uni1tag,*p1uni1,*p1uni2,*p1uni3,*p1uni4,*p1uni5,*p1uni6,*p1uni7,
   *p1uni8,*p1uni9,*p1uni10,*p1uni11,*p1uni12,*p1uni13,*p1uni14,
   *p1uni15,*p1uni16,*p1uni17 = &uni1tag;

  union uni2{
    int uni2int;
    union uni1 *unip1;
  }uni2tag,*p2uni2,*p2uni3;

  p1uni17->unip2 = &uni2tag;
  uni2tag.uni2int = 5;
  int_wk1 = p1uni17->unip2->uni2int;

  ichck("DTT01_02",5,int_wk1,"union with area test");
}



{
  int_wk1 = func1();
  ichck("DTT01_03",9,int_wk1,
        "call function with enumerator list test");
}



{
  enum enumtag{ arg0, arg1, arg2, arg3, arg4,
                arg5, arg6, arg7, arg8, arg9
   }enumvar1,*enumpv1,*enumpv2,*enumpv3,*enumpv4,*enumpv5,
    *enumpv6,*enumpv7,*enumpv8,*enumpv9,*enumpv10,*enumpv11,
    *enumpv12,*enumpv13 = &enumvar1;

  *enumpv13 = arg7;
  int_wk1 = *enumpv13;

  ichck("DTT01_04",7,int_wk1,"enum with var and var pointer test");
}




  header("","struct, union, and enum tag test proc.");
}
