      integer  a(10),b(10)
      integer resa(10),resb(10)
      data resa/0,0,0,0,1,1,1,1,1,1/
      data resb/0,0,0,0,2,2,2,2,2,2/

      do j=1,10
         a(j) = 0
         b(j) = 0
         i =5
      enddo

      do i=i,10
         a(i) = 1

         b(i) = 2
      enddo

      do i=1,10
         if (a(i).ne.resa(i) .or. b(i).ne.resb(i)) goto 199
      enddo

      write(6,*) " ## ok 1 ## "
      goto 1100
 199  write(6,*) " ## error 1 ##"
      write(6,*) a
      write(6,*) b
 1100 continue

      call sub1()

      END

      subroutine sub1()
      integer  a(10),b(10)
      integer resa(10),resb(10)
      data resa/0,0,0,0,1,1,1,1,1,1/
      data resb/0,0,0,0,2,2,2,2,2,2/

      a = 0
      do j=1,10

         b(j) = 0
         i =5
      enddo

      do i=i,10
         a(i) = 1

         b(i) = 2
      enddo

      do i=1,10
         if (a(i).ne.resa(i) .or. b(i).ne.resb(i)) goto 199
      enddo

      write(6,*) " ## ok 2 ## "
      goto 1100
 199  write(6,*) " ## error 2 ##"
      write(6,*) a
      write(6,*) b
 1100 continue
      end
