 call s1
 print *,'pass'
 end
 module m1
  type xx
    character*3,pointer:: xxs1
    type(xx),pointer,dimension(:)::xxa2
  end type
  type(xx),target::xt1
  type(xx),target,dimension(2)::xt21,xt22
  character*3,target:: xt31,xt32
  contains
  subroutine ss1
  type(xx),pointer::xs1
  type(xx)        ::xs2
  xs1=>xt1
  xs1%xxa2=>xt21
    xt21(2)%xxs1=>xt31
  xs2%xxa2=>xt22
    xt22(2)%xxs1=>xt32
  xs1%xxa2(2)%xxs1='abc'
  xs2%xxa2(2)%xxs1='def'
 end subroutine
  end
 subroutine s1
 use m1
 call ss1
 if (xt21(2)%xxs1/='abc')write(6,*) "NG"
 if (xt22(2)%xxs1/='def')write(6,*) "NG"
 end
