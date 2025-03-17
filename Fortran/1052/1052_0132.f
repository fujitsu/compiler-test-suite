      integer x(10)
      integer,parameter::ans=1
      integer,pointer::tmpp
      integer,target::tmp
      tmp=ans
      tmpp=>tmp
!$omp simd private(tmpp,tmp)
      do i=1,10
        tmpp=>tmp
        tmpp=i
        x(i)=tmp 
      enddo

      if (tmpp.ne.ans) then
        print*,"NG",tmpp,tmp,x
        stop 1
      endif
      print*,"OK"
      end
