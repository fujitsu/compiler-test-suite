      program main
      integer s(4)

      s = 0
      do i=1,10
         s(1) = s(1) + i
         s(2) = s(2) + i
         s(3) = s(3) + i
         s(4) = s(4) + i
      enddo
      print *,s
      end
