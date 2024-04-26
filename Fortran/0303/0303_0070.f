      real*4    k001(10,10,10), k002(10,10,10), k003(10,10,10)
      real*4    k004(10,10,10), k005(10,10,10), k006(10,10,10)
      real*4    res, ans
      data      res/0.0/,ans/3684000.0/

      do k = 1,10,1
       do j = 1,10,1
        do i = 1,10,1
         k001(i,j,k)=001+i+j*10+k*100
         k002(i,j,k)=002+i+j*10+k*100
         k003(i,j,k)=003+i+j*10+k*100
        enddo
        do i = 1,10,1
         k004(i,j,k)=004+i+j*10+k*100
         k005(i,j,k)=005+i+j*10+k*100
         k006(i,j,k)=006+i+j*10+k*100
        enddo
       enddo
      enddo

      do k = 1,10,1
       do j = 1,10,1
        do i = 1,10,1
          res=res+k001(i,j,k)+k002(i,j,k)+k003(i,j,k)
     &            +k004(i,j,k)+k005(i,j,k)+k006(i,j,k)
        enddo
       enddo
      enddo
      if (res.eq.ans) then
        print *,'ok'
      else
        print *,'ng : res=',res,'ans=',ans
      endif

      stop
      end
