      call sub1
      call sub2
      call sub3
      call sub4
      end

      subroutine sub1
      integer a(10)/10*0/,b(10)/10*0/
      integer n/0/,m/0/

      do i=1,10
         n = n + 1
         a(i) = n

         b(i) = n
      enddo

      do i=1,10
         if (a(i).ne. i .or. b(i).ne.i) goto 199
      enddo

      write(6,*) " ## ok 1 ## "
      goto 1100
 199  write(6,*) " ## error 1 ##"
      write(6,*) a
      write(6,*) b
 1100 continue

      return
      end

      subroutine sub2
      integer a(10)/10*0/,b(10)/10*0/
      integer n/0/,m/0/

      do i=1,10
         n = n + 1
         a(i) = n

         m = m + 1
         b(i) = m
      enddo

      do i=1,10
         if (a(i).ne. i .or. b(i).ne.i) goto 199
      enddo

      write(6,*) " ## ok 2 ## "
      goto 1100
 199  write(6,*) " ## error 2 ##"
      write(6,*) a
      write(6,*) b
 1100 continue
      return
      end

      subroutine sub3
      integer a(10)/10*0/,b(10)/10*0/
      integer n/0/,m/0/

      do i=1,10
         n = n + 1
         a(i) = n

         b(i) = i
      enddo

      do i=1,10
         if (a(i).ne. i .or. b(i).ne.i) goto 199
      enddo

      write(6,*) " ## ok 3 ## "
      goto 1100
 199  write(6,*) " ## error 3 ##"
      write(6,*) a
      write(6,*) b
 1100 continue
      return
      end

      subroutine sub4
      integer a(10)/10*0/,b(10)/10*0/
      integer n/0/,m/0/

      do i=1,10
         a(i) = n

         b(i) = n
         n = n + 1
      enddo

      do i=1,10
         if (a(i).ne. i-1 .or. b(i).ne.i-1) goto 199
      enddo

      write(6,*) " ## ok 4 ## "
      goto 1100
 199  write(6,*) " ## error 4 ##"
      write(6,*) a
      write(6,*) b
 1100 continue
      return
      end
