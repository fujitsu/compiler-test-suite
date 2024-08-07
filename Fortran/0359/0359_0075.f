      call c8
      call c16
      end
      subroutine c8
      complex*8 a(32),b(32),resa(32)
      real*4 x(32)
      data resa/(  -29.0,  1.0),(  -61.0,  3.0),(  -93.0,  5.0),
     + ( -125.0, 7.0),( -157.0,  9.0),( -189.0, 11.0),( -221.0, 13.0),
     + ( -253.0,15.0),( -285.0, 17.0),( -317.0, 19.0),( -349.0, 21.0),
     + ( -381.0,23.0),( -413.0, 25.0),( -445.0, 27.0),( -477.0, 29.0),
     + ( -509.0,31.0),( -541.0, 33.0),( -573.0, 35.0),( -605.0, 37.0),
     + ( -637.0,39.0),( -669.0, 41.0),( -701.0, 43.0),( -733.0, 45.0),
     + ( -765.0,47.0),( -797.0, 49.0),( -829.0, 51.0),( -861.0, 53.0),
     + ( -893.0,55.0),( -925.0, 57.0),( -957.0, 59.0),( -989.0, 61.0),
     + (-1021.0,63.0)/

      j = 1
      do i=1,32
         a(i) = cmplx(i,i+2)
         b(i) = cmplx(j,j+1)
         x(i) = -i*32
         j=j+2
      enddo

      do i=1,32
         a(i) = cmplx(3,real(b(i))) + x(i)
      enddo

      do i=1,32
         if (a(i).ne.resa(i)) goto 10
      enddo
      goto 20
 10      write(6,*) ' ## test c8 NG ## '
      write(6,*) a
      goto 30
 20   write(6,*) ' ## test c8 OK ## '
 30   continue
      end      

      subroutine c16
      complex*16 a(32),b(32),resa(32)
      real*8 x(32)
      data resa/(  -29.0,  1.0),(  -61.0,  3.0),(  -93.0,  5.0),
     + ( -125.0, 7.0),( -157.0,  9.0),( -189.0, 11.0),( -221.0, 13.0),
     + ( -253.0,15.0),( -285.0, 17.0),( -317.0, 19.0),( -349.0, 21.0),
     + ( -381.0,23.0),( -413.0, 25.0),( -445.0, 27.0),( -477.0, 29.0),
     + ( -509.0,31.0),( -541.0, 33.0),( -573.0, 35.0),( -605.0, 37.0),
     + ( -637.0,39.0),( -669.0, 41.0),( -701.0, 43.0),( -733.0, 45.0),
     + ( -765.0,47.0),( -797.0, 49.0),( -829.0, 51.0),( -861.0, 53.0),
     + ( -893.0,55.0),( -925.0, 57.0),( -957.0, 59.0),( -989.0, 61.0),
     + (-1021.0,63.0)/

      j = 1
      do i=1,32
         a(i) = cmplx(i,i+2)
         b(i) = cmplx(j,j+1)
         x(i) = -i*32
         j=j+2
      enddo

      do i=1,32
         a(i) = dcmplx(3,dreal(b(i))) + x(i)
      enddo

      do i=1,32
         if (a(i).ne.resa(i)) goto 10
      enddo
      goto 20
 10      write(6,*) ' ## test c16 NG ## '
      write(6,*) a
      goto 30
 20   write(6,*) ' ## test c16 OK ## '
 30   continue
      end      
