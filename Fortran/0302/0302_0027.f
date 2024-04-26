      call pk_sin
      call pk_cos
      call pk_exp
      call pk_log
      call pk_sincos
      call pk_pow1
      call pk_pow2
      call pk_cexp
      call pk_tan
      call pk_atan
      call pk_atan2
      call pk_log10
      call pk_sqrt
      end
      
      subroutine pk_sin()
      real*4 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      do i=1,10
         a(i) = sin(b(i))
      enddo
      write(6,*) a
      end

      subroutine pk_cos()
      real*4 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      do i=1,10
         a(i) = cos(b(i))
      enddo
      write(6,*) a
      end

      subroutine pk_exp()
      real*4 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      do i=1,10
         a(i) = exp(b(i))
      enddo
      write(6,*) a
      end

      subroutine pk_log()
      real*4 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      do i=1,10
         a(i) = log(b(i))
      enddo
      write(6,*) a
      end

      subroutine pk_sincos()
      real*4 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      do i=1,10
         a(i) = sin(b(i)) + cos(b(i))
      enddo
      write(6,*) a
      end

      subroutine pk_pow1()
      real*4 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      real*4 c(10)/10*3/
      do i=1,10
         a(i) = b(i) ** c(i)
      enddo
      write(6,*) a
      end

      subroutine pk_pow2()
      real*4 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      do i=1,10
         a(i) = 3 ** b(i)
      enddo
      write(6,*) a
      end

      subroutine pk_cexp()
      complex*8 ca(10),cb(10)/10,9,8,7,6,5,4,3,2,1/
      do i=1,10
         ca(i) = exp(cb(i))
      enddo
      write(6,*) ca
      end

      subroutine pk_tan()
      real*4 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      do i=1,10
         a(i) = tan(b(i))
      enddo
      write(6,*) a
      end

      subroutine pk_atan()
      real*4 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      do i=1,10
         a(i) = atan(b(i))
      enddo
      write(6,*) a
      end

      subroutine pk_atan2()
      real*4 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      real*4 c(10)/10*3/
      do i=1,10
         a(i) = atan2(b(i),c(i))
      enddo
      write(6,*) a
      end

      subroutine pk_log10()
      real*4 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      do i=1,10
         a(i) = log10(b(i))
      enddo
      write(6,*) a
      end

      subroutine pk_sqrt()
      real*4 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      do i=1,10
         a(i) = sqrt(b(i))
      enddo
      write(6,*) a
      end
      
