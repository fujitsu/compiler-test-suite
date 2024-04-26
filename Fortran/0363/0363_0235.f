      program main
      integer(8) i2a(65),i2b(65),i2c,res(65)
      call init(i2a,i2b,i2c,res,65)
      do i=1,2
        call test(i2a,i2b,i2c,65)
      enddo
      do i=1,65
         if(i2a(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(i2a,i2b,i2c,res,n1)
      integer(8) i2a(n1),i2b(n1),i2c,res(n1)

      do i=1,65
        i2a(i) = -i
        i2b(i) = i
        i2c = 2
        res(i) = -i + i * 4
      enddo
      end
      
      subroutine test(i2a,i2b,i2c,n1)
      integer(8) i2a(n1),i2b(n1),i2c
      
      do i=1,65
         i2a(i) =  i2a(i) + i2b(i) * i2c
      enddo
      
      end
