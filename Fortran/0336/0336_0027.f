      integer array(2)
      common  /ng/array
      array(1) = 1
      array(2) = 2
      call foo()
      end

      subroutine foo()
      integer array(2)
      common /ng/array

      if (.false.) then
 40      array(1) = 3
         array(2) = 4
         print *,array(1)
         if (.false.) goto 40
      else
 60      array(1) = 5
         if (.false.) goto 60
      endif
      if (array(1) == 5) then
         print *,"ok"
      else
         print *,"ng"
      endif
      end
