      real*8,allocatable:: a(:)
      real*8,allocatable:: b(:)
      allocate(a(100),b(100))
      do i=1,100
        a(i) = real(i,8)
      enddo
!$omp simd aligned(a,b)
      do i=1,100
        b(i) = a(i)
      enddo
      do i=1,100
        if (a(i).ne.b(i)) exit
      enddo
      if (i.ne.101) then
        print*,"NG", i, a(i), b(i)
        stop 1
      else
        print*,"OK"
      endif
      end 
