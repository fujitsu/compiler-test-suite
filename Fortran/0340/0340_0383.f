      call sub1()
      call sub2()
      call sub3(10)
      call sub4(10)
      end

      subroutine sub1()
      integer a(10)/1,2,3,4,5,6,7,8,9,10/
      integer b(10)/10*0/
      integer c(10)/10*0/
      integer resb(10)/0,0,0,0,0,16,17,18,19,20/
      integer resc(10)/4,5,6,7,8,9,10,11,12,13/
      do i=1,10
         if (a(i) .gt.5) then
            b(i) = i+10

         endif

         c(i) = i+3
      enddo

      do i=1,10
         if (b(i).ne.resb(i).or.c(i).ne.resc(i)) goto 199
      enddo

      write(6,*) " ## ok 1 ## "
      goto 1100
 199  write(6,*) " ## error 1 ##"
      write(6,*) b
      write(6,*) c
 1100 continue
      return
      end

      subroutine sub2()
      integer a(10)/1,2,3,4,5,6,7,8,9,10/
      integer b(10)
      integer c(10)/10*0/
      integer resb(10)/0,0,0,0,0,16,17,18,19,20/
      integer resc(10)/4,5,6,7,8,9,10,11,12,13/

      b = 0

      do i=1,10
         if (a(i) .gt.5) then
            b(i) = i+10

         endif

         c(i) = i+3
      enddo

      do i=1,10
         if (b(i).ne.resb(i).or.c(i).ne.resc(i)) goto 199
      enddo

      write(6,*) " ## ok 2 ## "
      goto 1100
 199  write(6,*) " ## error 2 ##"
      write(6,*) b
      write(6,*) c
 1100 continue
      return
      end

      subroutine sub3(n)
      integer a(10)/1,2,3,4,5,6,7,8,9,10/
      integer b(10)/10*0/
      integer c(10)/10*0/
      integer resb(10)/0,0,0,0,0,16,17,18,19,20/
      integer resc(10)/4,5,6,7,8,9,10,11,12,13/

      do i=1,n
         if (a(i) .gt.5) then
            b(i) = i+10

         endif

         c(i) = i+3
      enddo

      do i=1,n
         if (b(i).ne.resb(i).or.c(i).ne.resc(i)) goto 199
      enddo

      write(6,*) " ## ok 3 ## "
      goto 1100
 199  write(6,*) " ## error 3 ##"
      write(6,*) b
      write(6,*) c
 1100 continue
      return
      end

      subroutine sub4(n)
      integer a(10)/1,2,3,4,5,6,7,8,9,10/
      integer b(10)
      integer c(10)/10*0/
      integer resb(10)/0,0,0,0,0,16,17,18,19,20/
      integer resc(10)/4,5,6,7,8,9,10,11,12,13/

      b = 0

      do i=1,n
         if (a(i) .gt.5) then
            b(i) = i+10

         endif

         c(i) = i+3
      enddo

      do i=1,n
         if (b(i).ne.resb(i).or.c(i).ne.resc(i)) goto 199
      enddo

      write(6,*) " ## ok 4 ## "
      goto 1100
 199  write(6,*) " ## error 4 ##"
      write(6,*) b
      write(6,*) c
 1100 continue
      return
      end

