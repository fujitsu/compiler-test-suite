      integer(8) i8a(31),i8b(31),i8c(31)
      data i8a/31*0/
      data i8b/31*1/
      data i8c/31*2/
      call foo(N)
      do i=1,N
         i8a(i) = max(i8b(i),i8c(i))
      enddo
      do i=1,N
         if (i8a(i) .ne. i8c(i)) goto 10
      enddo
      print *, "OK"
      goto 20
 10   print *, "NG"
      print *, i8a
 20   continue
      end

      subroutine foo(N)
      integer N
      N = 31
      end

