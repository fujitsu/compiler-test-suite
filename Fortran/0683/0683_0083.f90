      integer:: i1(1)
      i1=0
!$omp simd
      do i=1,1
        print *,i1
      enddo
      print *,'PASS'
      end

