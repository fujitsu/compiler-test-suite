      real, dimension(100) ::a
      integer, dimension(100) ::index
      data a/100*0.0/
      data index/25*1,25*0,25*1,25*0/
      call sub(a,index,100)
      end

      subroutine sub(a,index,n)
      real, dimension(n) ::a
      integer, dimension(n) ::index

      do i=1,n
        if (index(i)==0) then
          a(i) = a(i) +1.0
        endif
      enddo

      if (sum(a).eq.50.0) then
        print*, "OK"
      else
        print*, "NG"
      endif

      return
      end
