      integer x(10)
      integer,parameter::ans1=1, ans2=2
      integer tmp1/ans1/, tmp2(10)/10*ans2/
!$omp simd private(tmp1,tmp2)
      do i=1,10
        tmp1=i
        tmp2(i)=tmp1
        x(i)=tmp2(i) 
      enddo
      if (tmp1.ne.ans1) then
        print*,"NG1 ",tmp1,x
        stop 1
      endif
      do i=1,10
        if (tmp2(i).ne.ans2) exit
      enddo
      if (i.ne.11) then
        print*,"NG2 ",tmp2,x
        stop 1
      endif
      print*,"OK"
      end
