      integer(8) i8a(31),i8b(31),result_ceil(31),result_floor(31)
      real(8) r8a(31),r8b(31)
      data i8a/31*0/
      data i8b/31*0/
      data r8a/10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2/
      data result_ceil/11,-8,7,-4,2,-1,4,6,-7,10,
     +            11,-8,7,-4,2,-1,4,6,-7,10,
     +            11,-8,7,-4,2,-1,4,6,-7,10,
     +            11/
      data r8b/10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2/
      data result_floor/10,-9,6,-5,2,-1,3,5,-8,9,
     +            10,-9,6,-5,2,-1,3,5,-8,9,
     +            10,-9,6,-5,2,-1,3,5,-8,9,
     +            10/
      call foo(N)
      do i=1,N
         i8a(i) = ceiling(r8a(i))
         i8b(i) = floor(r8b(i))
      enddo
      do i = 1,N
         if(i8a(i) .ne. result_ceil(i) .or.
     +      i8b(i) .ne. result_floor(i)) goto 10
      enddo
      print *, "OK"
      goto 20
 10   print *, "NG"
      print *, i8a
      print *, i8b
 20   continue
      end

      subroutine foo(N)
      integer N
      N = 31
      end
