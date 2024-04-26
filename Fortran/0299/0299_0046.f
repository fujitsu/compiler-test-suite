      call sub2
      end

      subroutine sub1
      end

      subroutine sub2
      real*4  a(10),b(10),c(10)
      real*4 resa(10),resb(10),resc(10)
      data resa/101,102,103,104,105,106,107,108,109,110/
      data resb/10*13/
      data resc/10*22/
      data b,c/10*3.,10*2./

      do i=1,10
         a(i) = i 
         b = b + 1
         a(i) = a(i) + 100
         c = c  + 2
      end do

        write(6,*) a
      do i=1,10
         if (a(i).ne.resa(i) .or. c(i).ne.resc(i) .or.
     +        b(i).ne.resb(i)) goto 199
      enddo
      write(6,*) " ## ok 2 ## "
      goto 1100
 199      write(6,*) " ## error 2 ##"
      write(6,*) a
 1100   continue
      end
