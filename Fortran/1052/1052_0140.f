      integer,dimension(:),allocatable::a
      integer,dimension(10)::b
      allocate(a(10))
      a=1
!$omp parallel do simd firstprivate(a)
      do i=1,10
        a(i)=a(i)+i
        b(i)=a(i)
      end do
!$omp end parallel do simd
      if (any(a/=[1,1,1,1,1,1,1,1,1,1]).or.
     &    any(b/=[2,3,4,5,6,7,8,9,10,11])) then
        print*,"NG:",a,b
        stop 1
      endif
      print*,"OK"
      end
