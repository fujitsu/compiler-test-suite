      real(4) r4a(31),r4b(31),result(31)
      data r4a/31*0.0/
      data r4b/10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2/
      data result/10.0,-8.0,7.0,-4.0,2.0,-1.0,3.0,6.0,-8.0,10.0,
     +            10.0,-8.0,7.0,-4.0,2.0,-1.0,3.0,6.0,-8.0,10.0,
     +            10.0,-8.0,7.0,-4.0,2.0,-1.0,3.0,6.0,-8.0,10.0,
     +            10.0/
      call foo(N)
      do i = 1,N
         r4a(i) = anint(r4b(i))
      enddo
      do i = 1,N
         if(r4a(i) .ne. result(i)) goto 10
      enddo
      print *, "OK"
      goto 20
 10   print *, "NG"
      print *, r4a
 20   continue
      end

      subroutine foo(N)
      integer N
      N = 31
      end
