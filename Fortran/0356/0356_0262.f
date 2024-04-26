      integer function isub(a,n)
      integer*4 a(9),xx
      xx = 1
      do i=n,9
         xx = xx + a(i)
      end do
      isub = xx
      return
      end

      integer*4 a(100)/100*1/
      n = isub(a,1)
      if (n .ne. 10) write(6,*) "ng1: ",n
      n = isub(a,6)
      if (n .ne. 5) write(6,*) "ng2: ",n
      n = isub(a,10)
      if (n .ne. 1) write(6,*) "ng3: ",n
      write(6,*) "ok"
      end
