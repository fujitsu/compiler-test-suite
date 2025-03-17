      integer x(10)
      integer,parameter::ans=5
      integer,pointer::tmpp
      integer,target,allocatable::tmp
      allocate(tmp)
      tmp=ans
      tmpp=>tmp
!$omp simd private(tmpp,tmp)
      do i=1,10
        tmpp=>tmp
        tmp=i
        x(i)=tmpp 
      enddo

      if ((tmpp.ne.ans).or.(tmp.ne.ans).or.
     &    (any(x/=[1,2,3,4,5,6,7,8,9,10]))) then
        print*,"NG",tmpp,tmp,x
        stop 1
      endif
      print*,"OK"
      end
