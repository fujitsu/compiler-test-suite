      call r4
      call r8
      end

      subroutine r4
      real aa(15)/1, -14, 1,  19,
     +               2, 19, 7, -14,
     +             -15, -15,19,2,3,4,5/
      real bb(1),resv(4)/-15,-15,19,19/
      integer resi(4)/10,9,11,4/

      bb(1) = 10
      idx = 20
      do i=1,11
         if (aa(i) .le. bb(1)) then
            idx = i
            bb(1) = aa(i)
         endif
      enddo

      if (isub(bb(1),idx,resv(1),resi(1)).eq.1) stop 1

      bb(1) = 10
      idx = 20
      do i=1,11
         if (aa(i) .lt. bb(1)) then
            idx = i
            bb(1) = aa(i)
         endif
      enddo

      if (isub(bb(1),idx,resv(2),resi(2)).eq.1) stop 2

      bb(1) = 2
      idx = 20
      do i=1,11
         if (aa(i) .ge. bb(1)) then
            idx = i
            bb(1) = aa(i)
         endif
      enddo

      if (isub(bb(1),idx,resv(3),resi(3)).eq.1) stop 3


      bb(1) = 2
      idx = 20
      do i=1,11
         if (aa(i) .gt. bb(1)) then
            idx = i
            bb(1) = aa(i)
         endif
      enddo

      if (isub(bb(1),idx,resv(4),resi(4)).eq.1) stop 4
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
     +               2, 19, 7, -14,
     +             -15, -15,19,2,3,4,5/
      real*8 bb(1),resv(4)/-15,-15,19,19/
      integer resi(4)/10,9,11,4/

      bb(1) = 10
      idx = 20
      do i=1,11
         if (aa(i) .le. bb(1)) then
            idx = i
            bb(1) = aa(i)
         endif
      enddo

      if (isub2(bb(1),idx,resv(1),resi(1)).eq.1) stop 11

      bb(1) = 10
      idx = 20
      do i=1,11
         if (aa(i) .lt. bb(1)) then
            idx = i
            bb(1) = aa(i)
         endif
      enddo

      if (isub2(bb(1),idx,resv(2),resi(2)).eq.1) stop 12

      bb(1) = 2
      idx = 20
      do i=1,11
         if (aa(i) .ge. bb(1)) then
            idx = i
            bb(1) = aa(i)
         endif
      enddo

      if (isub2(bb(1),idx,resv(3),resi(3)).eq.1) stop 13


      bb(1) = 2
      idx = 20
      do i=1,11
         if (aa(i) .gt. bb(1)) then
            idx = i
            bb(1) = aa(i)
         endif
      enddo

      if (isub2(bb(1),idx,resv(4),resi(4)).eq.1) stop 14
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
