      integer:: x(5)
      integer,allocatable:: tmp
      integer,parameter:: init=1
      allocate(tmp)
      tmp=init
!$omp simd private(tmp)
      do i=1,5
        tmp=i
        x(i)=tmp
      enddo
!$omp end simd
      if ((tmp.ne.init) .or. any(x/=[1,2,3,4,5])) then
        print *,'NG'
        stop 1 
      endif
      print *,'OK'
      end
