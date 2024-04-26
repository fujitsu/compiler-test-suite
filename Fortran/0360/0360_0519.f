      call r4
      call r8
      end

      subroutine r4
      real aa(15)/2,17,-19,8,10,-19,17,15,2,-29,27,2,3,4,5/
      real bb(1),res(4)/-29,-29,27,27/

      bb(1) = 3
      do i=1,11
         if (aa(i) .lt. bb(1)) then
            bb(1) = aa(i)
         endif
      enddo
      if (isub(bb(1),res(1)).eq.1) stop 1

      bb(1) = 3
      do i=1,11
         if (aa(i) .le. bb(1)) then
            bb(1) = aa(i)
         endif
      enddo

      if (isub(bb(1),res(2)).eq.1) stop 2

      bb(1) = 3
      do i=1,11
         if (aa(i) .gt. bb(1)) then
            bb(1) = aa(i)
         endif
      enddo
      if (isub(bb(1),res(3)).eq.1) stop 3

      bb(1) = 3
      do i=1,11
         if (aa(i) .ge. bb(1)) then
            bb(1) = aa(i)
         endif
      enddo
      if (isub(bb(1),res(4)).eq.1) stop 4

      write(6,*) ' ok '
      end

      integer function isub(calc,res)
      real calc,res
      isub = 0

      if (calc.ne.res) then
         write(6,*) calc
         write(6,*) res
         isub = 1
         return
      endif
      return
      end

      subroutine r8
      real*8 aa(15)/2,17,-19,8,10,-19,17,15,2,-29,27,2,3,4,5/
      real*8 bb(1),res(4)/-29,-29,27,27/

      bb(1) = 3
      do i=1,11
         if (aa(i) .lt. bb(1)) then
            bb(1) = aa(i)
         endif
      enddo
      if (isub2(bb(1),res(1)).eq.1) stop 11

      bb(1) = 3
      do i=1,11
         if (aa(i) .le. bb(1)) then
            bb(1) = aa(i)
         endif
      enddo

      if (isub2(bb(1),res(2)).eq.1) stop 12

      bb(1) = 3
      do i=1,11
         if (aa(i) .gt. bb(1)) then
            bb(1) = aa(i)
         endif
      enddo
      if (isub2(bb(1),res(3)).eq.1) stop 13

      bb(1) = 3
      do i=1,11
         if (aa(i) .ge. bb(1)) then
            bb(1) = aa(i)
         endif
      enddo
      if (isub2(bb(1),res(4)).eq.1) stop 14

      write(6,*) ' ok '
      end

      integer function isub2(calc,res)
      real*8 calc,res
      isub2 = 0

      if (calc.ne.res) then
         write(6,*) calc
         write(6,*) res
         isub2 = 1
         return
      endif
      return
      end
