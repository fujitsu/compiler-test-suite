      integer(4) i4a(31),i4b(31),result_floor4(31)
      integer(8) i8a(31),i8b(31),result_floor8(31)
      real(4) r4a(31),r4b(31),result_nint4(31)
      real(8) r8a(31),r8b(31),result_nint8(31)
      data i4a/31*0/
      data i4b/31*0/
      data r4a/10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2/
      data result_floor4/10,-9,6,-5,2,-1,3,5,-8,9,
     +            10,-9,6,-5,2,-1,3,5,-8,9,
     +            10,-9,6,-5,2,-1,3,5,-8,9,
     +            10/
      data r4b/10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2/
      data result_nint4/10,-8,7,-4,2,-1,3,6,-8,10,
     +            10,-8,7,-4,2,-1,3,6,-8,10,
     +            10,-8,7,-4,2,-1,3,6,-8,10,
     +            10/
      data i8a/31*0/
      data i8b/31*0/
      data r8a/10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2/
      data result_floor8/10,-9,6,-5,2,-1,3,5,-8,9,
     +            10,-9,6,-5,2,-1,3,5,-8,9,
     +            10,-9,6,-5,2,-1,3,5,-8,9,
     +            10/
      data r8b/10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2/
      data result_nint8/10,-8,7,-4,2,-1,3,6,-8,10,
     +            10,-8,7,-4,2,-1,3,6,-8,10,
     +            10,-8,7,-4,2,-1,3,6,-8,10,
     +            10/

      call foo(N)
      do i=1,N
         i4a(i) = floor(r4a(i))
         i4b(i) = nint(r4b(i))
         i8a(i) = floor(r8a(i))
         i8b(i) = nint(r8b(i))
      enddo
      do i = 1,N
         if(i4a(i) .ne. result_floor4(i) .or.
     +      i4b(i) .ne. result_nint4(i)  .or.
     +      i8a(i) .ne. result_floor8(i) .or.
     +      i8b(i) .ne. result_nint8(i)) goto 10
      enddo
      print *, "OK"
      goto 20
 10   print *, "NG"
      print *, i4a
      print *, i4b
      print *, i8a
      print *, i8b
 20   continue
      end

      subroutine foo(N)
      integer N
      N = 31
      end
