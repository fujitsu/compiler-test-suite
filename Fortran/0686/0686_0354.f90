      integer a(10,10)
      a=0
      call test04(a)
      if (any(a/=reshape((/(1,i=1,10*10)/),(/10,10/)))) then
        print *,"fail"
      endif
      print *,'pass'
      end 

      subroutine test04(a)
      integer a(10,10)
!$omp paralleldo reduction(+:a)
      do j=1,10
      do i=1,10
       a(i,j)=a(i,j)+1
      end do
      end do
!$omp end paralleldo
      end
