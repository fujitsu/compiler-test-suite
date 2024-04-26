      common //i
      i = 1
      call sub1
      i = 1
      call sub2
      end

      subroutine sub1
      real*4  a(10)/10*0/,b(10),c(10),d(10)/10*0/
      real*4 resa(10),resb(10)
      common //i

      data resa/0,0,6,7,8,9,10,11,12,13/
      data resb/0,0,3,4,5,6,7,8,9,10/

      do j=1,10
         b(j) = j
         c(j) = j+2
      enddo

      do i=i+2,10
         a(i) = b(i) + 3

         d(i) = c(i) -2
      enddo

      do i=1,10
         if (a(i).ne.resa(i) .or. d(i).ne.resb(i)) goto 199
      enddo

      write(6,*) " ## ok 1 ## "
      goto 1100
 199    write(6,*) " ## error 1 ##"
      write(6,*) a
      write(6,*) d
      write(6,*) resa
      write(6,*) resb
 1100  continue

      return
      end

      subroutine sub2
      real*4  a(10)/10*0/,b(10)/10*0/,c(10)/10*0/,d(10)/10*0/
      common //i

      do i=i+2,10
         a(i) = i

         b(i) = i

         c(i) = i

         d(i) = i
      enddo

      do i=1,10
         if (i.le.2) then
            if (a(i).ne.0.or.b(i).ne.0 .or.
     +           c(i).ne.0 .or. d(i).ne.0) goto 299
         else
            if (a(i).ne.i .or. b(i).ne.i .or.
     +           c(i).ne.i .or. d(i).ne.i) goto 299
         endif
      enddo

      write(6,*) " ## ok 2 ## "
      goto 2100
 299    write(6,*) " ## error 2 ##"
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
 2100  continue

      return
      end
