      integer aa(15)/1, -14, 1,  19,
     +               2, 19, 7, -14,-15,0,1,2,3,4,5/
      integer bb(1),idx(1)

      bb(1) = 10
      idx(1) = 20
      do i=1,8
         if (aa(i) .le. bb(1)) then
            idx(1) = i
            bb(1) = aa(i)
         endif
      enddo

      if (isub(bb(1),idx(1),-14,8).eq.1) stop 1

      bb(1) = 10
      idx(1) = 20
      do i=1,8
         if (aa(i) .lt. bb(1)) then
            idx(1) = i
            bb(1) = aa(i)
         endif
      enddo

      if (isub(bb(1),idx(1),-14,2).eq.1) stop 2

      bb(1) = 2
      idx(1) = 20
      do i=1,8
         if (aa(i) .ge. bb(1)) then
            idx(1) = i
            bb(1) = aa(i)
         endif
      enddo

      if (isub(bb(1),idx(1),19,6).eq.1) stop 3


      bb(1) = 2
      idx(1) = 20
      do i=1,8
         if (aa(i) .gt. bb(1)) then
            idx(1) = i
            bb(1) = aa(i)
         endif
      enddo

      if (isub(bb(1),idx(1),19,4).eq.1) stop 4
      write(6,*) ' ok '

      end

      integer function isub(calcv,calci,resv,resi)
      integer calcv,resv
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
