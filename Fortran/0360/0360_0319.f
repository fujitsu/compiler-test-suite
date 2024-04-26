      call i4
      call i8
      call r4
      call r8
      call c8
      call c16
      end

      subroutine i4
      integer*4 a(10)
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/,c(10)/10*3/
      do i=1,10
         a(i) = b(i) ** c(i)
      enddo
      write(6,*) a
      end
      subroutine i8
      integer*8 a(10)
      integer*8 b(10)/1,2,3,4,5,6,7,8,9,10/,c(10)/10*3/
      do i=1,10
         a(i) = b(i) ** c(i)
      enddo
      write(6,*) a
      end
      subroutine r4
      real*4 a(10)
      real*4 b(10)/1,2,3,4,5,6,7,8,9,10/,c(10)/10*3/
      do i=1,10
         a(i) = b(i) ** c(i)
      enddo
      write(6,*) a
      end
      subroutine r8
      real*8 a(10)
      real*8 b(10)/1,2,3,4,5,6,7,8,9,10/,c(10)/10*3/
      do i=1,10
         a(i) = b(i) ** c(i)
      enddo
      write(6,*) a
      end
      subroutine c8
      complex*8 a(10)
      complex*8 b(10)/(1.,2.),(3.,4.),(5.,6.),(7.,8.),(9.,10.),
     +    (11.,12.),(13.,14.),(15.,16.),(17.,18.),(19.,20.)/
      complex*8 c(10)/10*(3.,4.)/
      do i=1,10
         a(i) = b(i) ** c(i)
      enddo
      write(6,*) a
      end

      subroutine c16
      complex*16 a(10)
      complex*16 b(10)/(1.,2.),(3.,4.),(5.,6.),(7.,8.),(9.,10.),
     +    (11.,12.),(13.,14.),(15.,16.),(17.,18.),(19.,20.)/
      complex*16 c(10)/10*(3.,4.)/
      do i=1,10
         a(i) = b(i) ** c(i)
      enddo
      write(6,*) a
      end

         
