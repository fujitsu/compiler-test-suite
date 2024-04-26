      integer(4) i4a(31),i4b(31),i4c(31)
      data i4a/31*0/
      data i4b/31*1/
      data i4c/31*2/
      call foo(N)
      do i = 1,N
        i4a(i) = i4b(i) * i4c(i)
      enddo
      do i = 1,N
         if(i4a(i) .ne. 2) goto 10
      enddo
      print *, "OK"
      goto 20
 10   print *, "NG"
      print *, i4a
 20   continue
      end

      subroutine foo(N)
      integer N
      N = 31
      end

