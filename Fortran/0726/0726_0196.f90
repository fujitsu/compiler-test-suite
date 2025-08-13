 call s1
 print *,'pass'
 end
 module m0
  integer,allocatable,dimension(:)::vs
      complex*32 y
  complex*32 ,parameter:: bb(3)=(/(.5,.6),(.1,.2),(.3,.4)/)
  complex*32 :: aa(3)=(/(.1,.2),(.3,.4),(.5,.6)/)
 end
  module m1
  use m0
  contains
   elemental function fun3(a)
    complex*32 fun3,a
    intent(in)::a
    fun3=a
   end function
  subroutine su(x1,x2)
  complex*32,dimension(:)::x1,x2
  if (any(x1/=x2))write(6,*) "NG"
  end subroutine
  end
 subroutine s1
 use m1
   interface
   elemental function fun2(a)
    use m1
    complex*32:: fun2,a
    intent(in)::a
   end function
   end interface
 allocate(vs(3));vs=(/3,1,2/)
 call su(fun1(aa),aa)
 call su(fun2(aa),aa)
 call su(fun3(aa),aa)
 call su(fun1(aa(vs)),bb)
 call su(fun2(aa(vs)),bb)
 call su(fun3(aa(vs)),bb)
 write(66,*) fun1(aa)
 write(66,*) fun2(aa)
 write(66,*) fun3(aa)
 write(67,*) fun1(aa(vs))
 write(67,*) fun2(aa(vs))
 write(67,*) fun3(aa(vs))
 call ss1(aa)
 call chk
  contains
   elemental function fun1(a)
    complex*32 fun1,a
    intent(in)::a
    fun1=a
   end function
   subroutine ss1(aa)
   complex*32,dimension(:)::aa
 call su(fun1(aa),aa)
 call su(fun2(aa),aa)
 call su(fun3(aa),aa)
 call su(fun1(aa(vs)),bb)
 call su(fun2(aa(vs)),bb)
 call su(fun3(aa(vs)),bb)
 write(66,*) fun1(aa)
 write(66,*) fun2(aa)
 write(66,*) fun3(aa)
 write(67,*) fun1(aa(vs))
 write(67,*) fun2(aa(vs))
 write(67,*) fun3(aa(vs))
 end subroutine
 end
   elemental function fun2(a)
    use m1
    complex*32 fun2,a
    intent(in)::a
    fun2=a
   end function
 subroutine chk
  complex*32 x(3),y(3)/(.1,.2),(.3,.4),(.5,.6)/
  complex*32 z(3)/(.5,.6),(.1,.2),(.3,.4)/
 rewind 66
 read(66,*) x;if (any(x/=y))write(6,*) "NG"
 read(66,*) x;if (any(x/=y))write(6,*) "NG"
 read(66,*) x;if (any(x/=y))write(6,*) "NG"
 read(66,*) x;if (any(x/=y))write(6,*) "NG"
 read(66,*) x;if (any(x/=y))write(6,*) "NG"
 read(66,*) x;if (any(x/=y))write(6,*) "NG"
 rewind 67
 read(67,*) x;if (any(x/=z))write(6,*) "NG"
 read(67,*) x;if (any(x/=z))write(6,*) "NG"
 read(67,*) x;if (any(x/=z))write(6,*) "NG"
 read(67,*) x;if (any(x/=z))write(6,*) "NG"
 read(67,*) x;if (any(x/=z))write(6,*) "NG"
 read(67,*) x;if (any(x/=z))write(6,*) "NG"
end
