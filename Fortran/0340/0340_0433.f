      call sub1
      call sub2
      call sub3(1,10)
      call sub4(1,10)
      end

      subroutine sub1
      integer a(10)/10*0/,b(10)/10*0/,c(10)
      integer resa(10)
      data resa/0,0,0,5,6,7,8,16,18,20/

      do i=1,10
         b(i) = i
         if (i .gt. 3) then
            a(i) = i + 1
         endif
         b(i) = b(i) + 2
         if (i .gt. 7) then
            a(i) = i * 2
         endif
         c(i) = i
      enddo

      do i=1,10
         if (a(i).ne.resa(i).or.b(i).ne.i+2.or.c(i).ne.i) goto 199
      enddo

      write(6,*) " ## ok 1 ## "
      goto 1100
 199  write(6,*) " ## error 1 ##"
      write(6,*) a
      write(6,*) resa
      write(6,*) b
      write(6,*) c
 1100 continue
      end

      subroutine sub2
      integer a(10)/10*0/,b(10)/10*0/,c(10)
      integer resa(10)
      data resa/0,0,0,5,6,7,8,16,18,20/

      a = 0
      do i=1,10
         b(i) = i
         if (i .gt. 3) then
            a(i) = i + 1
         endif
         b(i) = b(i) + 2
         if (i .gt. 7) then
            a(i) = i * 2
         endif
         c(i) = i
      enddo

      do i=1,10
         if (a(i).ne.resa(i).or.b(i).ne.i+2.or.c(i).ne.i) goto 199
      enddo

      write(6,*) " ## ok 2 ## "
      goto 1100
 199  write(6,*) " ## error 2 ##"
      write(6,*) a
      write(6,*) resa
      write(6,*) b
      write(6,*) c
 1100 continue
      end

      subroutine sub3(n,m)
      integer a(10)/10*0/,b(10)/10*0/,c(10)
      integer resa(10)
      data resa/0,0,0,5,6,7,8,16,18,20/

      do i=n,m
         b(i) = i
         if (i .gt. 3) then
            a(i) = i + 1
         endif
         b(i) = b(i) + 2
         if (i .gt. 7) then
            a(i) = i * 2
         endif
         c(i) = i
      enddo

      do i=1,10
         if (a(i).ne.resa(i).or.b(i).ne.i+2.or.c(i).ne.i) goto 199
      enddo

      write(6,*) " ## ok 3 ## "
      goto 1100
 199  write(6,*) " ## error 3 ##"
      write(6,*) a
      write(6,*) resa
      write(6,*) b
      write(6,*) c
 1100 continue
      end

      subroutine sub4(n,m)
      integer a(10)/10*0/,b(10)/10*0/,c(10)
      integer resa(10)
      data resa/0,0,0,5,6,7,8,16,18,20/

      a = 0
      do i=n,m
         b(i) = i
         if (i .gt. 3) then
            a(i) = i + 1
         endif
         b(i) = b(i) + 2
         if (i .gt. 7) then
            a(i) = i * 2
         endif
         c(i) = i
      enddo

      do i=1,10
         if (a(i).ne.resa(i).or.b(i).ne.i+2.or.c(i).ne.i) goto 199
      enddo

      write(6,*) " ## ok 4 ## "
      goto 1100
 199  write(6,*) " ## error 4 ##"
      write(6,*) a
      write(6,*) resa
      write(6,*) b
      write(6,*) c
 1100 continue
      end

