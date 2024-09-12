      call sub1
      print *,' ## pass ##'
      end
      subroutine sub1
      dimension tmat(5,5), tv(5)
      tmat = 2
      do i = 1,2
         do ip = 1, 2
            do m = ip+1, 5
               tv( 1 ) =  tmat( 1, ip )
            end do
         end do
      end do
      return
      end
