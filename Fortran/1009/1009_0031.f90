    module mod
      type z
        integer(4),allocatable,dimension(:)::za
      end type
      type y
        type(z),allocatable,dimension(:)::ya
      end type
    end module

    program main
      use mod
      type(y)::a
      integer(2)::i,m
      m=4
      allocate(a%ya(1))
      allocate(a%ya(1)%za(4))
      a%ya(1)%za=(/1,10,1,1/)
!$omp parallel
      call sub(i,a,m)
!$omp endparallel
      if (any(a%ya(1)%za/=(/1,10,1,10/)).or.i/=11) write(6,*) "NG"

     print *,'ok'
    end program

    subroutine sub(i,a,m)
      use mod
      integer(2)::i,m
      type(y)::a
!$omp do schedule(static,a%ya(1)%za(m)),lastprivate(i)
      do i=a%ya(1)%za(1),a%ya(1)%za(2),a%ya(1)%za(3)
        if (i==a%ya(1)%za(2)) a%ya(1)%za(4)=i
      enddo
!$omp enddo
    end subroutine
