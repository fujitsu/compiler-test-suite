      call c8
      call c16
      end

      subroutine c8
      complex*8 a(10)/10*0/,d(10),resa(10),resd(10)
      real*4 x(10)/81,82,83,84,85,86,87,88,89,90/
      data d/(1.,-10.),(12.,-11.),(23.,-12.),(44.,-13.),(56.,-14.),
     +       (16.,-15.),(27.,-16.),(38.,-17.),(49.,-18.),(10.,-19.)/
      data resa/8*(71,3),0,0/
      data resd/(-9.0,-10.0),( 2.0,-11.0),(13.0,-12.0),(34.0,-13.0),
     + (46.0,-14.0),( 6.0,-15.0),(17.0,-16.0),(28.0,-17.0),
     + (49.0,-18.0),(10.0,-19.0)/
      do i=1,8
         d(i) = d(i) - 10
         a(i) = cmplx(imag(d(i)),3)+x(i)
      enddo
      do i=1,10
         if (abs(abs(a(i))-abs(resa(i))) > 0.00005 .or.
     +       abs(abs(d(i))-abs(resd(i))) > 0.00005 ) goto 10
      enddo
      goto 20
 10   write(6,*) ' ## test c8 NG ## '
      write(6,*) a
      write(6,*) d
      goto 30
 20   write(6,*) ' ## test c8 OK ## '
 30   continue
      end      
      subroutine c16
      complex*16 a(10)/10*0/,d(10),resa(10),resd(10)
      real*8 x(10)/81,82,83,84,85,86,87,88,89,90/
      data d/(1.,-10.),(12.,-11.),(23.,-12.),(44.,-13.),(56.,-14.),
     +       (16.,-15.),(27.,-16.),(38.,-17.),(49.,-18.),(10.,-19.)/
      data resa/8*(71,3),0,0/
      data resd/(-9.0,-10.0),( 2.0,-11.0),(13.0,-12.0),(34.0,-13.0),
     + (46.0,-14.0),( 6.0,-15.0),(17.0,-16.0),(28.0,-17.0),
     + (49.0,-18.0),(10.0,-19.0)/
      do i=1,8
         d(i) = d(i) - 10
         a(i) = dcmplx(dimag(d(i)),3)+x(i)
      enddo
      do i=1,10
         if (abs(abs(a(i))-abs(resa(i))) > 0.00005 .or.
     +       abs(abs(d(i))-abs(resd(i))) > 0.00005 ) goto 10
      enddo
      goto 20
 10   write(6,*) ' ## test c16 NG ## '
      write(6,*) a
      write(6,*) d
      goto 30
 20   write(6,*) ' ## test c16 OK ## '
 30   continue
      end      
