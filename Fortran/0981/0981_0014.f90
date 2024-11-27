 call s1
 print *,'pass'
 end
 subroutine s1
  character*3 a(2)
  integer,dimension(:),allocatable::vs
!$omp parallel default(firstprivate) private(vs)
  a=(/'123','456'/)
  allocate(vs(2));vs=(/2,1/)
  call sub(fun(a)//fun(a)//fun(a)//fun(a))
  call subx(fun(a(vs))//fun(a(vs))//fun(a(vs))//fun(a(vs)))
  call ss1(a)
!$omp end parallel
   contains
     elemental function fun(a)
     character*3 fun,a
     intent(in)::a
     fun=a
     end function
    subroutine ss1(a)
    character*(*),dimension(:)::a
!$omp parallel private(vs)
  allocate(vs(2));vs=(/2,1/)
    call sub(fun(a)//fun(a)//fun(a)//fun(a))
    call subx(fun(a(vs))//fun(a(vs))//fun(a(vs))//fun(a(vs)))
!$omp end parallel
    end subroutine
 end
 subroutine sub(a)
 character*(*) a(2)
!$omp parallel default(firstprivate) firstprivate(a)
 if (len(a)/=12)write(6,*) "NG"
 if ((a(1)/=repeat('123',4)))write(6,*) "NG"
 if ((a(2)/=repeat('456',4)))write(6,*) "NG"
!$omp end parallel
 end
 subroutine subx(a)
 character*(*) a(2)
!$omp parallel default(firstprivate) firstprivate(a)
 if (len(a)/=12)write(6,*) "NG"
 if ((a(2)/=repeat('123',4)))write(6,*) "NG"
 if ((a(1)/=repeat('456',4)))write(6,*) "NG"
!$omp end parallel
 end
