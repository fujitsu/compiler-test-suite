      integer(8) i8a(31),result_floor(31)
      real(8) r8a(31),r8b(31),r8c(31),result_anint(31)
      data i8a/31*0/
      data r8b/10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2/
      data result_floor/10,-9,6,-5,2,-1,3,5,-8,9,
     +            10,-9,6,-5,2,-1,3,5,-8,9,
     +            10,-9,6,-5,2,-1,3,5,-8,9,
     +            10/
      data r8c/10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2/
      data result_anint/10.0,-8.0,7.0,-4.0,2.0,-1.0,3.0,6.0,-8.0,10.0,
     +            10.0,-8.0,7.0,-4.0,2.0,-1.0,3.0,6.0,-8.0,10.0,
     +            10.0,-8.0,7.0,-4.0,2.0,-1.0,3.0,6.0,-8.0,10.0,
     +            10.0/

      call foo(N)
      do i=1,N
         i8a(i) = floor(r8b(i))
         r8a(i) = anint(r8c(i))
      enddo
      do i = 1,N
         if(i8a(i) .ne. result_floor(i) .or.
     +      r8a(i) .ne. result_anint(i)) goto 10
      enddo
      print *, "OK"
      goto 20
 10   print *, "NG"
      print *, i8a
      print *, r8a
 20   continue
      end

      subroutine foo(N)
      integer N
      N = 31
      end
