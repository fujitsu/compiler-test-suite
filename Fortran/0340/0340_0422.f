      call sub1(2,9)
      call sub2(2,9)
      call sub3(2,9)
      end

      subroutine sub1(n,m)
      integer a(10)/10*3/,b(10)/10*0/
      integer c(10)/10,11,12,13,14,15,16,17,18,19/
      integer resa(10),resb(10),resc(10)
      data resa/3,5,5,5,5,5,5,5,5,3/
      data resb/0,5,5,5,5,5,5,5,5,0/
      data resc/10,6,6,6,6,6,6,6,6,19/

      b = 0
      do i=n,m
         a(i) = a(i) + 2

         b(i) = a(i+1) + 2

         c(i) = a(i+1) + 3
      enddo

      do i=1,10
         if (a(i).ne.resa(i) .or. b(i).ne.resb(i) .or.
     +        c(i).ne.resc(i)) goto 199
      enddo

      write(6,*) " ## ok 1 ## "
      goto 1100
 199  write(6,*) " ## error 1 ##"
      write(6,*) a
      write(6,*) resa
      write(6,*) b
      write(6,*) resb
      write(6,*) c
      write(6,*) resc
 1100 continue
      end

      subroutine sub2(n,m)
      integer a(10)/10*3/,b(10)/10*0/
      integer c(10)/10,11,12,13,14,15,16,17,18,19/
      integer resa(10),resb(10),resc(10)
      data resa/3,5,5,5,5,5,5,5,5,3/
      data resb/0,5,5,5,5,5,5,5,5,0/
      data resc/10,8,8,8,8,8,8,8,8,19/

      b = 0
      do i=n,m
         a(i) = a(i) + 2

         b(i) = a(i+1) + 2

         c(i) = a(i) + 3
      enddo

      do i=1,10
         if (a(i).ne.resa(i) .or. b(i).ne.resb(i) .or.
     +        c(i).ne.resc(i)) goto 199
      enddo

      write(6,*) " ## ok 2 ## "
      goto 1100
 199  write(6,*) " ## error 2 ##"
      write(6,*) a
      write(6,*) resa
      write(6,*) b
      write(6,*) resb
      write(6,*) c
      write(6,*) resc
 1100 continue
      end

      subroutine sub3(n,m)
      integer a(10)/10*3/,b(10)/10*0/
      integer c(10)/10,11,12,13,14,15,16,17,18,19/
      integer resa(10),resb(10),resc(10)
      data resa/3,5,5,5,5,5,5,5,5,3/
      data resb/0,5,5,5,5,5,5,5,5,0/
      data resc/10,6,8,8,8,8,8,8,8,19/

      b = 0
      do i=n,m
         a(i) = a(i) + 2

         b(i) = a(i+1) + 2

         c(i) = a(i-1) + 3
      enddo

      do i=1,10
         if (a(i).ne.resa(i) .or. b(i).ne.resb(i) .or.
     +        c(i).ne.resc(i)) goto 199
      enddo

      write(6,*) " ## ok 3 ## "
      goto 1100
 199  write(6,*) " ## error 3 ##"
      write(6,*) a
      write(6,*) resa
      write(6,*) b
      write(6,*) resb
      write(6,*) c
      write(6,*) resc
 1100 continue
      end

