 call s1
 print *,'pass'
 end
 module m0
  integer,allocatable,dimension(:)::vs
   type x
      character*3 y
   end type
  type(x),parameter:: bb(3)=(/x('333'),x('111'),x('222')/)
   interface operator(/=)
     module procedure p
   end interface
   contains
   elemental function p(x1,x2)
   type (x),intent(in)::x1,x2
   logical p
   p=x1%y/=x2%y
   end function
 end
  module m1
  use m0
  contains
   elemental function fun3(a)
    type(x) fun3,a
    intent(in)::a
    fun3=a
   end function
  end
 subroutine s1
 use m1
   interface
   elemental function fun2(a)
    use m1
    type(x):: fun2,a
    intent(in)::a
   end function
   end interface
 type(x),dimension(3):: a1,a2,a3,a4,a5,a6
 type(x):: aa(3)/x('111'),x('222'),x('333')/
 allocate(vs(3));vs=(/3,1,2/)
 a1=fun1(aa(vs))
 if (any(a1/=bb)) write(6,*) "NG"
 a2=fun2(aa(vs))
 if (any(a2/=bb)) write(6,*) "NG"
 a3=fun3(aa(vs))
 if (any(a3/=aa(vs))) write(6,*) "NG"
 call ss1(aa,a4,a5,a6)
  contains
   elemental function fun1(a)
    type(x) fun1,a
    intent(in)::a
    fun1=a
   end function
   subroutine ss1(aa,a1,a2,a3)
   type(x),dimension(:)::aa,a1,a2,a3
 a1=fun1(aa(vs))
 if (any(a1/=bb)) write(6,*) "NG"
 a2=fun2(aa(vs))
 if (any(a2/=aa(vs))) write(6,*) "NG"
 a3=fun3(aa(vs))
 if (any(a3/=aa(vs))) write(6,*) "NG"
 end subroutine
 end
   elemental function fun2(a)
    use m1
    type(x) fun2,a
    intent(in)::a
    fun2=a
   end function
