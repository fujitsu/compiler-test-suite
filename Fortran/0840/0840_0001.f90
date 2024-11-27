      subroutine foo(x,y,z)
      integer x,y,z
!$omp ordered simd
        x=y+z
!$omp end ordered
      end subroutine

      interface
        subroutine foo(x,y,z)
        integer x,y,z
        end subroutine
      end interface
      integer a(20),b(20)
      a=0
      b=0
!$omp simd
      do i=1,16
        a(i)=i
        call foo(b(i+1),b(i),a(i))
      enddo
!$omp end simd
if(b(10)==45) then
print *, 'pass'
else
print *, 'b(10)=',b(10)
endif
      end
