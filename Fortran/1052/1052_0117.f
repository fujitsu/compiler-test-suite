      integer a(100), b(100)
      do i=1,100
        a(i)=i
      enddo
!$omp parallel do simd
      do i=1,100
        b(i)=i
      enddo
!$omp end parallel do simd
      do i=1,100
        if (a(i).ne.b(i)) exit
      enddo
      if (i>100) then
        print*,"OK"
      else
        print*,"NG",i,a(i),b(i)
      endif
      end
