      integer aa(15)/1, -14, 1,  19,
     +               2, 19, 7, -14,
     +             -15, -15,19,2,3,4,5/
      integer bb

      bb = 10
      idx = 20
      do i=1,11
         if (aa(i) .le. bb) then
            idx = i
            bb = aa(i)
         endif
      enddo

      if (isub(bb,idx,-15,10).eq.1) stop 1

      bb = 10
      idx = 20
      do i=1,11
         if (aa(i) .lt. bb) then
            idx = i
            bb = aa(i)
         endif
      enddo

      if (isub(bb,idx,-15,9).eq.1) stop 2

      bb = 2
      idx = 20
      do i=1,11
         if (aa(i) .ge. bb) then
            idx = i
            bb = aa(i)
         endif
      enddo

      if (isub(bb,idx,19,11).eq.1) stop 3


      bb = 2
      idx = 20
      do i=1,11
         if (aa(i) .gt. bb) then
            idx = i
            bb = aa(i)
         endif
      enddo

      if (isub(bb,idx,19,4).eq.1) stop 4
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
