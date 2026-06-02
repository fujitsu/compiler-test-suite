      integer a(10)
      a=0
      call test04(a)
      if (any(a/=(/(i,i=1,10)/))) print *,"fail"
      print *,'pass'
      end 

      subroutine test04(a)
      integer a(10)
      do i=1,10
!$omp paralleldo reduction(+:a)
      do j=1,i
        a(i)=a(i)+1
      end do
!$omp end paralleldo
      enddo
      end
