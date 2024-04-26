      call r4
      call r8
      end

      subroutine r4
      real aa(15)/1, -14, 1,  19,
     +               2, 19, 7, -14,-15,0,1,2,3,4,5/
      real bb,resv(4)/-14,-14,19,19/
      integer resi(4)/8,2,6,4/

      bb = 10
      idx = 20
      do i=1,8
         if (aa(i) .le. bb) then
            idx = i
            bb = aa(i)
         endif
      enddo

      if (isub(bb,idx,resv(1),resi(1)).eq.1) stop 1

      bb = 10
      idx = 20
      do i=1,8
         if (aa(i) .lt. bb) then
            idx = i
            bb = aa(i)
         endif
      enddo

      if (isub(bb,idx,resv(2),resi(2)).eq.1) stop 2

      bb = 2
      idx = 20
      do i=1,8
         if (aa(i) .ge. bb) then
            idx = i
            bb = aa(i)
         endif
      enddo

      if (isub(bb,idx,resv(3),resi(3)).eq.1) stop 3

      bb = 2
      idx = 20
      do i=1,8
         if (aa(i) .gt. bb) then
            idx = i
            bb = aa(i)
         endif
      enddo

      if (isub(bb,idx,resv(4),resi(4)).eq.1) stop 4
      write(6,*) ' ok '

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
      
      subroutine r8
      real*8 aa(15)/1, -14, 1,  19,
     +               2, 19, 7, -14,-15,0,1,2,3,4,5/
      real*8 bb,resv(4)/-14,-14,19,19/
      integer resi(4)/8,2,6,4/

      bb = 10
      idx = 20
      do i=1,8
         if (aa(i) .le. bb) then
            idx = i
            bb = aa(i)
         endif
      enddo

      if (isub2(bb,idx,resv(1),resi(1)).eq.1) stop 11

      bb = 10
      idx = 20
      do i=1,8
         if (aa(i) .lt. bb) then
            idx = i
            bb = aa(i)
         endif
      enddo

      if (isub2(bb,idx,resv(2),resi(2)).eq.1) stop 12

      bb = 2
      idx = 20
      do i=1,8
         if (aa(i) .ge. bb) then
            idx = i
            bb = aa(i)
         endif
      enddo

      if (isub2(bb,idx,resv(3),resi(3)).eq.1) stop 13

      bb = 2
      idx = 20
      do i=1,8
         if (aa(i) .gt. bb) then
            idx = i
            bb = aa(i)
         endif
      enddo

      if (isub2(bb,idx,resv(4),resi(4)).eq.1) stop 14
      write(6,*) ' ok '

      end

      integer function isub2(calcv,calci,resv,resi)
      real*8 calcv,resv
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
