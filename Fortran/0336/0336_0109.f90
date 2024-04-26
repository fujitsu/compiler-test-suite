      program bits
      do pos = 1,4
         call binary ( i )
      end do
      print *,"pass"
      end program bits

      subroutine binary ( i )
      integer   i
      character onoff
      integer   pos
      nn = bit_size(i)-1
      do pos = nn, 0, -1
         if (pos .gt.0) then
              onoff = '1'
         else
              onoff = '0'
         end if
      end do
      end subroutine binary
