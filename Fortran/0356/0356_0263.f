      real*8 function sub(a,n)
      real*8 a(7),xx
      xx = 1
      do i=n,7
         xx = xx + a(i)
      end do
      sub = xx
      return
      end

      real*8 a(10)/10*1/,r,sub
      r = sub(a,1)
      if (r .ne. 8) write(6,*) "ng1: ",r
      r = sub(a,4)
      if (r .ne. 5) write(6,*) "ng2: ",r
      r = sub(a,10)
      if (r .ne. 1) write(6,*) "ng3: ",r
      write(6,*) "ok"
      end
