      integer x(10)
      integer,parameter::ans=8
      integer tmp1/0/, tmp2(10)/10*0/
!$omp simd lastprivate(tmp1,tmp2)
      do i=1,ans
        tmp1=i
        tmp2(i)=tmp1
        x(i)=tmp2(i) 
      enddo
      if (tmp1.ne.ans) then
        print*,"NG1 ",tmp1,x
        stop 1
      endif
      if (tmp2(ans).ne.ans) then
        print*,"NG2 ",tmp2,x
        stop 1
      endif
      print*,"OK"
      end
