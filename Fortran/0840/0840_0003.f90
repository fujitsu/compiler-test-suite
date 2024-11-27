      integer a(20),b(20)
      a=0
      b=0
!$omp parallel do simd ordered
      do i=1,16
        a(i)=i
!$omp ordered threads,simd
        b(i+1)=b(i)+1
!$omp end ordered
      enddo
!$omp end parallel do simd
      a=a(10)+b(10)
      if(a(10)==19) then
      print *, 'pass'
      else
      print *, 'a(10)=',a(10)
      endif
      end
