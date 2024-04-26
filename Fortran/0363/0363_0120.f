      program main
      integer*2 i2a(65),i2b(65),i2c(65)
      call init(i2a,i2b,i2c,65)
      do i=1,2
        call test(i2a,i2b,i2c,65)
      enddo
      do i=1,65
         if(i2a(i) .ne. (i+1)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(i2a,i2b,i2c,n1)
      integer*2  i2a(n1),i2b(n1),i2c(n1)

      do i=1,65
        i2a(i) = 0
        i2b(i) = i
        i2c(i) = 1
      enddo
      end

      subroutine test(i2a,i2b,i2c,n1)
      integer*2 i2a(n1),i2b(n1),i2c(n1)
      
      do i=1,65
        i2a(i) = i2b(i) + i2c(i)
      enddo
      
      end
