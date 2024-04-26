      integer err/1/
      real*4  a(10),b(10),c(10),d(10)
      real*4  resa(10),resb(10)

      do j=1,10
         a(j) = 0
         b(j) = j
         c(j) = j+2
         d(j) = 0
         i = 1
         n = 10
         resa(j) = j+3
         resb(j) = j
      enddo
      
      do i=ifunc(i),10
         a(i) = b(i) + 3

         d(i) = c(i) -2
      enddo

      do i=1,10
         if (a(i).ne.resa(i) .or. d(i).ne.resb(i)) goto 99
      enddo

      err = err + 1

      i = 1
      do i=ifunc(i),n
         a(i) = i

         b(i) = i

         c(i) = i

         d(i) = i
      enddo

      do i=1,10
         if (a(i).ne.i .or. b(i).ne.i .or.
     +        c(i).ne.i .or. d(i).ne.i) goto 99
      enddo

      write(6,*) " ## ok ## "
      goto 100
 99   write(6,*) " ## error  ",err," ##"

      write(6,*) a
      if (err .eq.1) then
         write(6,*) d
         write(6,*) resa
         write(6,*) resb
      else
         write(6,*) b
         write(6,*) c
         write(6,*) d
      endif
 100    continue
      END


      integer function ifunc(nn)
      ifunc = nn
      return
      end
