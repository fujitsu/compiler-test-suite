      integer(4) i4a(31),result(31)
      real(4) r4a(31)
      data i4a/31*0/
      data r4a/10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2/
      data result/10,-8,7,-4,2,-1,3,6,-8,10,
     +            10,-8,7,-4,2,-1,3,6,-8,10,
     +            10,-8,7,-4,2,-1,3,6,-8,10,
     +            10/
      call foo(N)
      do i = 1,N
         i4a(i) = nint(r4a(i))
      enddo
      do i = 1,N
         if(i4a(i) .ne. result(i)) goto 10
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