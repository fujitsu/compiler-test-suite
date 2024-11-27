      subroutine foo(a,b) 
      integer a(:),b(:)
!$omp do simd ordered
      do i=1,16
        a(i)=i
!$omp ordered simd,threads
        b(i+1)=b(i)+1
!$omp end ordered
      enddo
!$omp end do simd
      end subroutine

      interface
        subroutine foo(a,b)
        integer a(:),b(:)
        end subroutine 
      end interface
      integer a(20),b(20)
      a=0
      b=0
!$omp parallel
      call foo(a,b)
!$omp end parallel
      if(b(10)==9) then
        print *, 'pass'
      else
        print *, 'b(10)=',b(10)
      endif
      end
