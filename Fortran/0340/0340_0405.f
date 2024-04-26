      call sub1
      call sub2
      end

      subroutine sub1
      real*4  a(10),b(10)/10*3/,c(10)/10*2/
      real*4 resa(10),resb(10),resc(10)
      data resa/2,3,4,5,6,7,8,9,10,11/
      data resb/13,23,33,43,53,63,73,83,93,103/
      data resc/12,22,32,42,52,62,72,82,92,102/

      do i=1,10
         b(i) = 3
         c(i) = 2
      enddo

      do i=1,10

         a(i) = i

         forall (ii=1:10)

           b(ii) = b(ii) + ii

           c(ii) = c(ii) + ii

         end forall

         a(i) = a(i) + 1

      end do
      do i=1,10
         if (a(i).ne.resa(i) .or. c(i).ne.resc(i) .or.
     +        b(i).ne.resb(i)) goto 199
      enddo

      write(6,*) " ## ok 1 ## "
      goto 1100
 199    write(6,*) " ## error 1 ##"
      write(6,*) a
      write(6,*) b
      write(6,*) c
 1100 continue
      end

      subroutine sub2
      real*4  a(10),b(10)/10*3/,c(10)/10*2/
      real*4 resa(10),resb(10),resc(10)
      data resa/2,3,4,5,6,7,8,9,10,11/
      data resb/13,23,33,43,53,63,73,83,93,103/
      data resc/12,22,32,42,52,62,72,82,92,102/

      b = 3
      c = 2

      do i=1,10

         a(i) = i

         forall (ii=1:10)

           b(ii) = b(ii) + ii

           c(ii) = c(ii) + ii

         end forall

         a(i) = a(i) + 1

      end do
      do i=1,10
         if (a(i).ne.resa(i) .or. c(i).ne.resc(i) .or.
     +        b(i).ne.resb(i)) goto 199
      enddo

      write(6,*) " ## ok 2 ## "
      goto 1100
 199    write(6,*) " ## error 2 ##"
      write(6,*) a
      write(6,*) b
      write(6,*) c
 1100  continue
      end
