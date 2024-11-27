      integer a(20),b(20)
      a=0
      b=0
!$omp parallel
!$omp do simd ordered
      do i=1,16
        a(i)=i
!$omp ordered simd
        b(i)=b(i)+1
!$omp end ordered
      enddo
!$omp end do simd
!$omp end parallel
      a(1)=a(10)+b(10)
if(a(1)==11) then
  print *, 'pass'
else
  print *, 'a(1)=',a(1)
endif
      end
