    module mod
      common /com/ i
    end module

    program omptp016
      use mod , k=>i
      integer*4,parameter::m=10
      integer*4,dimension(m)::z
      integer*4 OMP_GET_THREAD_NUM

      call env(m)

!$omp parallel
      k = OMP_GET_THREAD_NUM()+1
!$omp end parallel

      call env(m)

!$omp parallel private(itotal)
      call sub1(itotal)
      call sub2(z,m,itotal)
!$omp end parallel

      if (any(z/=(/1,3,6,10,15,21,28,36,45,55/))) print *,z(1:m)
      print *,'pass'
    end program

    subroutine sub1(itotal)
      use mod , n=>i
      integer*4 a(n)
      integer*4,intent(out)::itotal

      itotal = 0

      do j=1,n
        a(j)=j
        itotal = itotal + a(j)
      enddo
    end subroutine

    subroutine sub2(z,m,itotal)
      use mod , k=>i
      integer*4,intent(out)::z(m)
      integer*4,intent(in)::itotal
      z(k) = itotal
    end subroutine

    subroutine env(m)
 !$   call OMP_SET_NUM_THREADS(m)
 !$   call OMP_SET_DYNAMIC(.FALSE.)
    end subroutine
