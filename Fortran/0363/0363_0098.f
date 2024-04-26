      program main
      integer*2 i2a(65),i2b(65),result(65)
      call init(i2a,i2b,result,65)
      do i=1,2
        call test(i2a,i2b,65)
      enddo
      do i=1,65
         if(i2a(i) .ne. result(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(i2a,i2b,result,n1)
      integer*2  i2a(n1),i2b(n1),result(n1)

      do i=1,65
        i2a(i) = 0
        i2b(i) = i
        result(i) = i
      enddo

      do i=1,65,2
        i2b(i) = -i
      enddo
      end

      subroutine test(i2a,i2b,n1)
      integer*2 i2a(n1),i2b(n1)
      
      do i=1,65
        i2a(i) = abs(i2b(i))
      enddo
      
      end
