      program main
      real*4 r4a(65),r4b(65),result(65)
      call init(r4a,r4b,result,65)
      do i=1,2
        call test(r4a,r4b,65)
      enddo
      do i=1,65
         if(r4a(i) .ne. result(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(r4a,r4b,result,n1)
      real*4  r4a(n1),r4b(n1),result(n1)

      do i=1,65
        r4a(i) = 0.0
        r4b(i) = i
        result(i) = i
      enddo

      do i=1,65,2
        r4b(i) = -i
      enddo
      end

      subroutine test(r4a,r4b,n1)
      real*4 r4a(n1),r4b(n1)
      
      do i=1,65
        r4a(i) = abs(r4b(i))
      enddo
      
      end
