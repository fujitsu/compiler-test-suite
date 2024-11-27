program main
        implicit none
        integer::i=0
        i=func()
if(i==45) then
print *, 'pass'
else
print *, 'i=',i
endif
        contains
integer function func()
integer a(20),b(20)
      a=0
      b=0
!$omp simd
      do i=1,16
        a(i)=i
!$omp ordered simd
        b(i+1)=b(i)+a(i)
!$omp end ordered
      enddo
!$omp end simd
func=b(10)
      end function
end
