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
  subroutine su(x1,x2)
  type(x),dimension(:)::x1,x2
  if (any(x1/=x2))write(6,*) "NG"
  end subroutine
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
 type(x):: aa(3)/x('111'),x('222'),x('333')/
 allocate(vs(3));vs=(/3,1,2/)
 call su(fun1(aa),aa)
 call su(fun2(aa),aa)
 call su(fun3(aa),aa)
 call su(fun1(aa(vs)),bb)
 call su(fun2(aa(vs)),bb)
 call su(fun3(aa(vs)),bb)
 write(60,*) fun1(aa)
 write(60,*) fun2(aa)
 write(60,*) fun3(aa)
 write(61,*) fun1(aa(vs))
 write(61,*) fun2(aa(vs))
 write(61,*) fun3(aa(vs))
 call ss1(aa)
 call chk
  contains
   elemental function fun1(a)
    type(x) fun1,a
    intent(in)::a
    fun1=a
   end function
   subroutine ss1(aa)
   type(x),dimension(:)::aa
 call su(fun1(aa),aa)
 call su(fun2(aa),aa)
 call su(fun3(aa),aa)
 call su(fun1(aa(vs)),bb)
 call su(fun2(aa(vs)),bb)
 call su(fun3(aa(vs)),bb)
 write(60,*) fun1(aa)
 write(60,*) fun2(aa)
 write(60,*) fun3(aa)
 write(61,*) fun1(aa(vs))
 write(61,*) fun2(aa(vs))
 write(61,*) fun3(aa(vs))
 end subroutine
 end
   elemental function fun2(a)
    use m1
    type(x) fun2,a
    intent(in)::a
    fun2=a
   end function
 subroutine chk
  character*10 x
 rewind 60
 read(60,'(a)') x;if (x/=' 111222333')write(6,*) "NG"
 read(60,'(a)') x;if (x/=' 111222333')write(6,*) "NG"
 read(60,'(a)') x;if (x/=' 111222333')write(6,*) "NG"
 read(60,'(a)') x;if (x/=' 111222333')write(6,*) "NG"
 read(60,'(a)') x;if (x/=' 111222333')write(6,*) "NG"
 read(60,'(a)') x;if (x/=' 111222333')write(6,*) "NG"
 rewind 61
 read(61,'(a)') x;if (x/=' 333111222')write(6,*) "NG"
 read(61,'(a)') x;if (x/=' 333111222')write(6,*) "NG"
 read(61,'(a)') x;if (x/=' 333111222')write(6,*) "NG"
 read(61,'(a)') x;if (x/=' 333111222')write(6,*) "NG"
 read(61,'(a)') x;if (x/=' 333111222')write(6,*) "NG"
 read(61,'(a)') x;if (x/=' 333111222')write(6,*) "NG"
end
