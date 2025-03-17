      integer:: x(5)
      integer,allocatable:: tmp(:)
      integer,parameter:: init=1
      allocate(tmp(5))
      tmp=init
!$omp simd private(tmp)
      do i=1,5
        tmp(i)=i
        x(i)=tmp(i)
      enddo
!$omp end simd
      if (any(tmp/=[init,init,init,init,init]) .or.
     &    any(x/=[1,2,3,4,5])) then
        print *,'NG'
        stop 1
      endif
      print *,'OK'
      end
