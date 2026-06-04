      module mod
          integer(4),allocatable,dimension(:)::iadd
          integer(4),allocatable,dimension(:)::isub
          integer(4),allocatable,dimension(:)::imul
          integer(4),            dimension(11:20)::ireduction=0
      end

      call sub1()
      call sub2()
      call sub3()
      print *,'pass'
      end

      subroutine sub1()
      use mod
      allocate(iadd(10))
      allocate(isub(10))
      allocate(imul(10))
      iadd = (/1,2,3,4,5,6,7,8,9,0/)
      isub = (/1,2,3,4,5,6,7,8,9,0/)
      imul = (/1,1,1,1,1,1,1,1,1,1/)
      end

      subroutine sub2()
      use mod
!$omp parallel
!$omp do reduction(+:ireduction)
      do i=1,10
        ireduction(i+10)=iadd(i)+isub(i)*imul(i)+ireduction(i+10)
      enddo
!$omp end do
!$omp end parallel
      if (lbound(ireduction,1)/=11) print *,"fail"
      if (ubound(ireduction,1)/=20) print *,"fail"
      end

      subroutine sub3()
      use mod
      if (any(ireduction/=(/2,4,6,8,10,12,14,16,18,0/))) print *,"fail"
      end
