      integer aa(15)/1,-2, 8,9,
     +               9, 8,-2,4,-14,-14,-21,1,2,3,4/
      integer bb,idx

      bb = -30
      idx = 20
      do i=1,8
         if (aa(i) .ge. bb) then
            idx = i
            bb = aa(i)
         endif
      enddo
      if (isub(bb,idx,9,5).eq.1) stop 1

      bb = -30
      idx = 20
      do i=1,8
         if (aa(i) .gt. bb) then
            idx = i
            bb = aa(i)
         endif
      enddo
      if (isub(bb,idx,9,4).eq.1) stop 2

      bb = 30
      idx = 20
      do i=1,8
         if (aa(i) .le. bb) then
            idx = i
            bb = aa(i)
         endif
      enddo
      if (isub(bb,idx,-2,7).eq.1) stop 3

      bb = 30
      idx = 20
      do i=1,8
         if (aa(i) .lt. bb) then
            idx = i
            bb = aa(i)
         endif
      enddo

      if (isub(bb,idx,-2,2).eq.1) stop 4

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
