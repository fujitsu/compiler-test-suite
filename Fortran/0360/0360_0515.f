      call r4
      call r8
      end

      subroutine r4
      real aa(15)/1, -14, 1,  19,
     +               2, 19, 7, -14,-15,0,1,2,3,4,5/
      real bb,resv(4)/-14,-14,19,19/
      integer resi(4)/8,2,6,4/,idx(1)
      
      ii = 1
      bb = 10
      idx(1) = 20
      do i=1,8
         if (aa(i) .le. bb) then
            idx(1) = i
            bb = aa(i)
         endif
      enddo

      if (isub(bb,idx(1),resv(ii),resi(ii)).eq.1) stop 1
      ii = ii + 1

      bb = 10
      idx(1) = 20
      do i=1,8
         if (aa(i) .lt. bb) then
            idx(1) = i
            bb = aa(i)
         endif
      enddo

      if (isub(bb,idx(1),resv(ii),resi(ii)).eq.1) stop 2
      ii = ii + 1
      bb = 2
      idx(1) = 20
      do i=1,8
         if (aa(i) .ge. bb) then
            idx(1) = i
            bb = aa(i)
         endif
      enddo

      if (isub(bb,idx(1),resv(ii),resi(ii)).eq.1) stop 3
      ii = ii + 1
      bb = 2
      idx(1) = 20
      do i=1,8
         if (aa(i) .gt. bb) then
            idx(1) = i
            bb = aa(i)
         endif
      enddo

      if (isub(bb,idx(1),resv(ii),resi(ii)).eq.1) stop 4
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
      integer resi(4)/8,2,6,4/,idx(1)
      
      ii = 1
      bb = 10
      idx(1) = 20
      do i=1,8
         if (aa(i) .le. bb) then
            idx(1) = i
            bb = aa(i)
         endif
      enddo

      if (isub2(bb,idx(1),resv(ii),resi(ii)).eq.1) stop 11
      ii = ii + 1

      bb = 10
      idx(1) = 20
      do i=1,8
         if (aa(i) .lt. bb) then
            idx(1) = i
            bb = aa(i)
         endif
      enddo

      if (isub2(bb,idx(1),resv(ii),resi(ii)).eq.1) stop 12
      ii = ii + 1
      bb = 2
      idx(1) = 20
      do i=1,8
         if (aa(i) .ge. bb) then
            idx(1) = i
            bb = aa(i)
         endif
      enddo

      if (isub2(bb,idx(1),resv(ii),resi(ii)).eq.1) stop 13
      ii = ii + 1
      bb = 2
      idx(1) = 20
      do i=1,8
         if (aa(i) .gt. bb) then
            idx(1) = i
            bb = aa(i)
         endif
      enddo

      if (isub2(bb,idx(1),resv(ii),resi(ii)).eq.1) stop 14
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
