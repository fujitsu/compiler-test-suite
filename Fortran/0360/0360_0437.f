      real(8) r8a(31),r8b(31),result(31)
      data r8a/31*0.0/
      data r8b/10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2/
      data result/10,-8,6,-4,2,-1,3,5,-7,9,
     +            10,-8,6,-4,2,-1,3,5,-7,9,
     +            10,-8,6,-4,2,-1,3,5,-7,9,
     +            10/

      call foo(N)
      do i = 1,N
         r8a(i) = aint(r8b(i))
      enddo
      do i = 1,N
         if(r8a(i) .ne. result(i)) goto 10
      enddo
      print *, "OK"
      goto 20
 10   print *, "NG"
      print *, r8a
 20   continue
      end

      subroutine foo(N)
      integer N
      N = 31
      end
