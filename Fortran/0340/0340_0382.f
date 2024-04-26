      call sub1()
      call sub2()
      end

      subroutine sub1()
      integer a(10)/1,2,3,4,5,6,7,8,9,10/
      integer res(10)/4,6,8,10,12,14,16,18,20,22/

      n = ifunc(10)

      do i=1,n
         a(i) = a(i) + 2

         a(i) = a(i) * 2

         a(i) = a(i) - 3

         a(i) = a(i) + 1
      enddo

      do i=1,10
         if (a(i).ne. res(i)) goto 199
      enddo

      write(6,*) " ## ok 1 ## "
      goto 1100
 199  write(6,*) " ## error 1 ##"
      write(6,*) a
 1100 continue
      return
      end

      subroutine sub2()
      integer a(10)/1,2,3,4,5,6,7,8,9,10/
      integer res(10)/4,6,8,10,12,14,16,18,20,22/
      integer b(10)

      n = ifunc(10)

      b = 0

      do i=1,n
         a(i) = a(i) + 2

         a(i) = a(i) * 2

         a(i) = a(i) - 3

         a(i) = a(i) + 1
      enddo

      do i=1,10
         if (a(i).ne. res(i) .or. b(i).ne.0) goto 199
      enddo

      write(6,*) " ## ok 2 ## "
      goto 1100
 199  write(6,*) " ## error 2 ##"
      write(6,*) a
 1100 continue

      return
      end

      integer function ifunc(nn)
      ifunc = nn
      return
      end
