      integer(4) i4a(31),result_nint4(31)
      integer(8) i8a(31),result_nint8(31)
      real(4) r4a(31),r4b(31),r4c(31),result_anint4(31)
      real(8) r8a(31),r8b(31),r8c(31),result_anint8(31)
      data i4a/31*0/
      data r4a/31*0.0/
      data r4b/10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2/
      data result_anint4/10.0,-8.0,7.0,-4.0,2.0,-1.0,3.0,6.0,-8.0,10.0,
     +            10.0,-8.0,7.0,-4.0,2.0,-1.0,3.0,6.0,-8.0,10.0,
     +            10.0,-8.0,7.0,-4.0,2.0,-1.0,3.0,6.0,-8.0,10.0,
     +            10.0/
      data r4c/10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2/
      data result_nint4/10,-8,7,-4,2,-1,3,6,-8,10,
     +            10,-8,7,-4,2,-1,3,6,-8,10,
     +            10,-8,7,-4,2,-1,3,6,-8,10,
     +            10/
      data i8a/31*0/
      data r8a/31*0.0/
      data r8b/10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2/
      data result_anint8/10.0,-8.0,7.0,-4.0,2.0,-1.0,3.0,6.0,-8.0,10.0,
     +            10.0,-8.0,7.0,-4.0,2.0,-1.0,3.0,6.0,-8.0,10.0,
     +            10.0,-8.0,7.0,-4.0,2.0,-1.0,3.0,6.0,-8.0,10.0,
     +            10.0/
      data r8c/10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2/
      data result_nint8/10,-8,7,-4,2,-1,3,6,-8,10,
     +            10,-8,7,-4,2,-1,3,6,-8,10,
     +            10,-8,7,-4,2,-1,3,6,-8,10,
     +            10/

      call foo(N)
      do i = 1,N
         r4a(i) = anint(r4b(i))
         i4a(i) = nint(r4c(i))
         r8a(i) = anint(r8b(i))
         i8a(i) = nint(r8c(i))
      enddo
      do i = 1,N
         if(r4a(i) .ne. result_anint4(i) .or.
     +      i4a(i) .ne. result_nint4(i)  .or.
     +      r8a(i) .ne. result_anint8(i) .or.
     +      i8a(i) .ne. result_nint8(i)) goto 10
      enddo
      print *, "OK"
      goto 20
 10   print *, "NG"
      print *, r4a
      print *, i4a
      print *, r8a
      print *, i8a
 20   continue
      end

      subroutine foo(N)
      integer N
      N = 31
      end
