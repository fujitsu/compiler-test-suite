      integer aa(15)/2,17,-19,8,10,-19,17,15,2,1,1,2,3,4,5/
      integer bb

      bb = 3
      do i=1,11
         if (aa(i) .lt. bb) then
            bb = aa(i)
         endif
      enddo
      if (isub(bb,-19).eq.1) stop 1

      bb = 3
      do i=1,11
         if (aa(i) .le. bb) then
            bb = aa(i)
         endif
      enddo

      if (isub(bb,-19).eq.1) stop 2

      bb = 3
      do i=1,11
         if (aa(i) .gt. bb) then
            bb = aa(i)
         endif
      enddo
      if (isub(bb,17).eq.1) stop 3

      bb = 3
      do i=1,11
         if (aa(i) .ge. bb) then
            bb = aa(i)
         endif
      enddo
      if (isub(bb,17).eq.1) stop 4

      write(6,*) ' ok '
      end

      integer function isub(calc,res)
      integer calc,res
      isub = 0

      if (calc.ne.res) then
         write(6,*) calc
         write(6,*) res
         isub = 1
         return
      endif
      return
      end
