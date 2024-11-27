CALL OMP_SET_NUM_THREADS(1)
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
!$omp parallel default(firstprivate) firstprivate(aa) private(vs)
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
!$omp end parallel
  contains
   elemental function fun1(a)
    type(x) fun1,a
    intent(in)::a
    fun1=a
   end function
   subroutine ss1(aax)
   type(x),dimension(:)::aax
   type(x),dimension(size(aax))::aa
!$omp parallel default(firstprivate) shared(aax,vs) 
 allocate(vs(3));vs=(/3,1,2/)
 aa=aax
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
!$omp end parallel
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
