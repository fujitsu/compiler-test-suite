 call s1
 print *,'pass'
 end
 module m0
  integer,allocatable,dimension(:)::vs
      character*3 y
  character*3 ,parameter:: bb(3)=(/('333'),('111'),('222')/)
 end
  module m1
  use m0
  contains
   elemental function fun3(a)
    character*3 fun3,a
    intent(in)::a
    fun3=a
   end function
  subroutine su(x1,x2)
  character*3,dimension(:)::x1,x2
  if (any(x1/=x2))write(6,*) "NG"
  end subroutine
  end
 subroutine s1
 use m1
   interface
   elemental function fun2(a)
    use m1
    character*3:: fun2,a
    intent(in)::a
   end function
   end interface
 character*3:: aa(3)/'111','222','333'/
 allocate(vs(3));vs=(/3,1,2/)
 call su(fun1(aa),aa)
 call su(fun2(aa),aa)
 call su(fun3(aa),aa)
 call su(fun1(aa(vs)),bb)
 call su(fun2(aa(vs)),bb)
 call su(fun3(aa(vs)),bb)
 write(1,*) fun1(aa)
 write(1,*) fun2(aa)
 write(1,*) fun3(aa)
 write(2,*) fun1(aa(vs))
 write(2,*) fun2(aa(vs))
 write(2,*) fun3(aa(vs))
 call ss1(aa)
 call chk
  contains
   elemental function fun1(a)
    character*3 fun1,a
    intent(in)::a
    fun1=a
   end function
   subroutine ss1(aa)
   character*3,dimension(:)::aa
 call su(fun1(aa),aa)
 call su(fun2(aa),aa)
 call su(fun3(aa),aa)
 call su(fun1(aa(vs)),bb)
 call su(fun2(aa(vs)),bb)
 call su(fun3(aa(vs)),bb)
 write(1,*) fun1(aa)
 write(1,*) fun2(aa)
 write(1,*) fun3(aa)
 write(2,*) fun1(aa(vs))
 write(2,*) fun2(aa(vs))
 write(2,*) fun3(aa(vs))
 end subroutine
 end
   elemental function fun2(a)
    use m1
    character*3 fun2,a
    intent(in)::a
    fun2=a
   end function
 subroutine chk
  character*10 x
 rewind 1
 read(1,'(a)') x;if (x/=' 111222333')write(6,*) "NG"
 read(1,'(a)') x;if (x/=' 111222333')write(6,*) "NG"
 read(1,'(a)') x;if (x/=' 111222333')write(6,*) "NG"
 read(1,'(a)') x;if (x/=' 111222333')write(6,*) "NG"
 read(1,'(a)') x;if (x/=' 111222333')write(6,*) "NG"
 read(1,'(a)') x;if (x/=' 111222333')write(6,*) "NG"
 rewind 2
 read(2,'(a)') x;if (x/=' 333111222')write(6,*) "NG"
 read(2,'(a)') x;if (x/=' 333111222')write(6,*) "NG"
 read(2,'(a)') x;if (x/=' 333111222')write(6,*) "NG"
 read(2,'(a)') x;if (x/=' 333111222')write(6,*) "NG"
 read(2,'(a)') x;if (x/=' 333111222')write(6,*) "NG"
 read(2,'(a)') x;if (x/=' 333111222')write(6,*) "NG"
end
