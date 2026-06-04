      call sub1
      call sub2
      end

      subroutine sub1
      integer a(10)
      real b(10)
      real*8 c(10)
      logical d(10),d2(10)/5*.false.,5*.true./
      do i=1,10
         a(i) = i
         b(i) = i+1

         c(i) = i-1

         d(i) = d2(i)
      enddo

      do i=1,10
         if (a(i).ne.i .or. b(i).ne.(i+1) .or.
     +        c(i).ne.(i-1).or.d(i).neqv.d2(i)) goto 199
      enddo

      write(6,*) " ## ok 1 ## "
      goto 1100
 199    write(6,*) " ## error 1 ##"
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
 1100  continue
      end

      subroutine sub2
      integer a(10)
      real b(10)
      real*8 c(10)
      logical d(10),d2(10)/5*.false.,5*.true./

      a = 0
      do i=1,10
         a(i) = i
         b(i) = i+1

         c(i) = i-1

         d(i) = d2(i)
      enddo

      do i=1,10
         if (a(i).ne.i .or. b(i).ne.(i+1) .or.
     +        c(i).ne.(i-1).or.d(i).neqv.d2(i)) goto 199
      enddo

      write(6,*) " ## ok 2 ## "
      goto 1100
 199    write(6,*) " ## error 2 ##"
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
 1100  continue
      end
