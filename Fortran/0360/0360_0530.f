      program main
      real*4 x(10),yr,rresv(3)
      integer*4 i,ki/0/,ji/-1/,h(10),jr/-1/,iresv(3),resi(6)
      data (x(i),i=1,10)/7.0,5.0,8.0,9.0,3.0,4.0,1.0,6.0,10.0,2.0/
      data (h(i),i=1,10)/7,5,8,9,3,4,1,6,10,2/
      data rresv/10,10,1/
      data iresv/10,1,10/
      data resi/9,9,9,7,7,9/

      yr=0.0
      ki=0
      do i=1,9
        if(yr.lt.x(i)) then
          yr=x(i)
          jr=i
        endif
        if(ki.lt.h(i)) then
          ki=h(i)
          ji=i
        endif
      enddo

      if (isub(yr,jr,rresv(1),resi(1)).eq.1) stop 1
      if (isub2(ki,ji,iresv(1),resi(2)).eq.1) stop 2

      yr=0.0
      ki=3
      do i=1,9
        if(yr.lt.x(i)) then
          yr=x(i)
          jr=i
        endif
        if(ki.gt.h(i)) then
          ki=h(i)
          ji=i
        endif
      enddo

      if (isub(yr,jr,rresv(2),resi(3)).eq.1) stop 3
      if (isub2(ki,ji,iresv(2),resi(4)).eq.1) stop 4
      yr=3.0
      ki=0
      do i=1,9
        if(yr.gt.x(i)) then
          yr=x(i)
          jr=i
        endif
        if(ki.lt.h(i)) then
          ki=h(i)
          ji=i
        endif
      enddo

      if (isub(yr,jr,rresv(3),resi(5)).eq.1) stop 5
      if (isub2(ki,ji,iresv(3),resi(6)).eq.1) stop 6

      yr=0.0
      ki=0
      do i=1,9
        if(yr.lt.x(i)) then
          yr=x(i)
          jr=i
        endif
        if(ki.le.h(i)) then
          ki=h(i)
          ji=i
        endif
      enddo

      if (isub(yr,jr,rresv(1),resi(1)).eq.1) stop 7
      if (isub2(ki,ji,iresv(1),resi(2)).eq.1) stop 8

      write(6,*) ' ok '
      stop
      end

      integer function isub(calcv,calci,resv,resi)
      real calcv,resv
      integer calci,resi
      isub = 0

      if (calcv.ne.resv .or. calci.ne.resi) then
         write(6,*) "calc (value,index) = (",calcv,calci,")"
         write(6,*) "res  (value,index) = (",resv,resi,")"
         isub = 1
         return
      endif
      return
      end

      integer function isub2(calcv,calci,resv,resi)
      integer calcv,resv
      integer calci,resi
      isub2 = 0

      if (calcv.ne.resv .or. calci.ne.resi) then
         write(6,*) "calc (value,index) = (",calcv,calci,")"
         write(6,*) "res  (value,index) = (",resv,resi,")"
         isub2 = 1
         return
      endif
      return
      end

