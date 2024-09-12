      save
      integer a(20),b(20)
      a=0
      b=0
!$omp simd
      do i=1,18
        a(i)=i
!$omp ordered simd
        b(i)=b(i)+1
!$omp end ordered
      enddo
!$omp end simd
      print*,a
      print*,b
      end

