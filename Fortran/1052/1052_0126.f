      integer x(10)
      integer,parameter::ans=1
      integer tmp/ans/
!$omp simd private(tmp)
      do i=1,10
        tmp=i
        x(i)=tmp 
      enddo
      if (tmp.ne.ans) then
        print*,"NG",tmp,x
        stop 1
      endif
      print*,"OK"
      end
