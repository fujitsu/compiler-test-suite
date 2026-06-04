CALL OMP_SET_NUM_THREADS(1)
 call s1
 print *,'pass'
 end
 subroutine s1
  complex*32 a(2)/(.2,.3),(.4,.5)/
  integer,dimension(:),allocatable::vs
!$omp parallel default(private) firstprivate(a)
  allocate(vs(2));vs=(/2,1/)
  call sub(fun(a)+fun(a)+fun(a)+fun(a))
  call subx(fun(a(vs))+fun(a(vs))+fun(a(vs))+fun(a(vs)))
  call ss1(a)
!$omp end parallel
   contains
     elemental function fun(a)
     complex*32  fun,a
     intent(in)::a
     fun=a
     end function
    subroutine ss1(ax)
    complex*32,dimension(:)::ax
    complex*32,dimension(size(ax))::a
!$omp parallel default(private) shared(ax,vs)
  allocate(vs(2));vs=(/2,1/)
    a=ax
    call sub(fun(a)+fun(a)+fun(a)+fun(a))
    call subx(fun(a(vs))+fun(a(vs))+fun(a(vs))+fun(a(vs)))
!$omp end parallel
    end subroutine
 end
 subroutine sub(a)
 complex*32 a(2)
 if ((a(1)/=(.2,.3)*4))print *,"fail"
 if ((a(2)/=(.4,.5)*4))print *,"fail"
 end
 subroutine subx(a)
 complex*32 a(2)
 if ((a(2)/=(.2,.3)*4))print *,"fail"
 if ((a(1)/=(.4,.5)*4))print *,"fail"
 end
