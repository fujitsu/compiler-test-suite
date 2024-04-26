      integer aa(15)/ 14,-14,-14, 14,
     +               -14, 14, 14,-14,-14,-21,1,2,3,4,5/
      integer bb,idx

      bb = -100
      idx = 20
      do i=1,8
         if (aa(i) .gt. bb) then
            idx = i
            bb = aa(i)
         endif
      enddo
      if (isub(bb,idx,14,1).eq.1) stop 1

      bb = -100
      idx = 20
      do i=1,8
         if (aa(i) .ge. bb) then
            idx = i
            bb = aa(i)
         endif
      enddo
      if (isub(bb,idx,14,7).eq.1) stop 2
      bb = 2
      idx = 20
      do i=1,8
         if (aa(i) .lt. bb) then
            idx = i
            bb = aa(i)
         endif
      enddo
      if (isub(bb,idx,-14,2).eq.1) stop 3
      bb = 2
      idx = 20
      do i=1,8
         if (aa(i) .le. bb) then
            idx = i
            bb = aa(i)
         endif
      enddo
      if (isub(bb,idx,-14,8).eq.1) stop 4

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
