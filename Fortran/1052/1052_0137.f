      integer x(10)
      integer,parameter::ans=10
      integer,allocatable::tmp
      allocate(tmp)
      tmp=0
!$omp do simd lastprivate(tmp)
      do i=1,ans
        tmp=i
        x(i)=tmp 
      enddo
      if (tmp.ne.ans) then
        print*,"NG",tmp,x
        stop 1
      endif
      print*,"OK"
      end
