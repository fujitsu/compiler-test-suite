      call i1
      call i2
      call i4
      call i8
      call l1
      call l2
      call l4
      call l8
      call r4
      call r8
      call c8
      call c16
      end

      subroutine i1()
      logical l(10)/3*.false.,3*.true.,3*.false.,.true./
      integer*1 a(10)/10*0/,b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (l(i)) then
            a(1) = a(1) + b(i)
         endif
      enddo
      write(6,*) a
      return
      end
      subroutine i2()
      logical l(10)/3*.false.,3*.true.,3*.false.,.true./
      integer*2 a(10)/10*0/,b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (l(i)) then
            a(1) = a(1) + b(i)
         endif
      enddo
      write(6,*) a
      return
      end
      subroutine i4()
      logical l(10)/3*.false.,3*.true.,3*.false.,.true./
      integer*4 a(10)/10*0/,b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (l(i)) then
            a(1) = a(1) + b(i)
         endif
      enddo
      write(6,*) a
      return
      end
      subroutine i8()
      logical l(10)/3*.false.,3*.true.,3*.false.,.true./
      integer*8 a(10)/10*0/,b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (l(i)) then
            a(1) = a(1) + b(i)
         endif
      enddo
      write(6,*) a
      return
      end

      subroutine l1()
      logical l(10)/3*.false.,3*.true.,3*.false.,.true./
      logical*1 a(10)/10*.false./,b(10)/10*.true./
      do i=1,10
         if (l(i)) then
            a(1) = a(1) .or. b(i)
         endif
      enddo
      write(6,*) a
      return
      end
      subroutine l2()
      logical l(10)/3*.false.,3*.true.,3*.false.,.true./
      logical*2 a(10)/10*.false./,b(10)/10*.true./
      do i=1,10
         if (l(i)) then
            a(1) = a(1) .or. b(i)
         endif
      enddo
      write(6,*) a
      return
      end
      subroutine l4()
      logical l(10)/3*.false.,3*.true.,3*.false.,.true./
      logical*4 a(10)/10*.false./,b(10)/10*.true./
      do i=1,10
         if (l(i)) then
            a(1) = a(1) .or. b(i)
         endif
      enddo
      write(6,*) a
      return
      end
      subroutine l8()
      logical l(10)/3*.false.,3*.true.,3*.false.,.true./
      logical*8 a(10)/10*.false./,b(10)/10*.true./
      do i=1,10
         if (l(i)) then
            a(1) = a(1) .or. b(i)
         endif
      enddo
      write(6,*) a
      return
      end
      subroutine r4()
      logical l(10)/3*.false.,3*.true.,3*.false.,.true./
      real*4 a(10)/10*0/,b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (l(i)) then
            a(1) = a(1) + b(i)
         endif
      enddo
      write(6,*) a
      return
      end
      subroutine r8()
      logical l(10)/3*.false.,3*.true.,3*.false.,.true./
      real*8 a(10)/10*0/,b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (l(i)) then
            a(1) = a(1) + b(i)
         endif
      enddo
      write(6,*) a
      return
      end
      subroutine c8()
      logical l(10)/3*.false.,3*.true.,3*.false.,.true./
      complex*8 a(10)/10*0/,b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (l(i)) then
            a(1) = a(1) + b(i)
         endif
      enddo
      write(6,*) a
      return
      end
      subroutine c16()
      logical l(10)/3*.false.,3*.true.,3*.false.,.true./
      complex*16 a(10)/10*0/,b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (l(i)) then
            a(1) = a(1) + b(i)
         endif
      enddo
      write(6,*) a
      return
      end
