      call c8
      call c16
      end

      subroutine c8
      complex*8 a(10)/10*0/,d(10),resa(10),resd(10)
      real*4 x(10)/51,52,53,54,55,56,57,58,59,60/
      data d/(1.,-10.),(2.,-11.),(3.,-12.),(4.,-13.),(5.,-14.),
     +       (6.,-15.),(7.,-16.),(8.,-17.),(9.,-18.),(10.,-19.)/
      data resa/8*(41,0),2*0/
      data resd/(-1.0,-10.0),(0,-11.0),(1.0,-12.0),(2.0,-13.0),
     + (3.0,-14.0),(4.0,-15.0),(5.0,-16.0),(6.0,-17.0),
     + (    9.0,-18.0),(   10.0,-19.0)/

      do i=1,8
         d(i) = d(i) - 2
         a(i) = x(i) + imag(d(i))
      enddo

      do i=1,10
         if (a(i).ne.resa(i).or.d(i).ne.resd(i)) goto 10
      enddo
      goto 20
 10      write(6,*) ' ## test c8 NG ## '
      write(6,*) a
      write(6,*) d
      goto 30
 20   write(6,*) ' ## test c8 OK ## '
 30   continue
      end      
      subroutine c16
      complex*16 a(10)/10*0/,d(10),resa(10),resd(10)
      real*8 x(10)/51,52,53,54,55,56,57,58,59,60/
      data d/(1.,-10.),(2.,-11.),(3.,-12.),(4.,-13.),(5.,-14.),
     +       (6.,-15.),(7.,-16.),(8.,-17.),(9.,-18.),(10.,-19.)/
      data resa/8*(41,0),2*0/
      data resd/(-1.0,-10.0),(0,-11.0),(1.0,-12.0),(2.0,-13.0),
     + (3.0,-14.0),(4.0,-15.0),(5.0,-16.0),(6.0,-17.0),
     + (    9.0,-18.0),(   10.0,-19.0)/

      do i=1,8
         d(i) = d(i) - 2
         a(i) = x(i) + dimag(d(i))
      enddo

      do i=1,10
         if (a(i).ne.resa(i).or.d(i).ne.resd(i)) goto 10
      enddo
      goto 20
 10      write(6,*) ' ## test c16 NG ## '
      write(6,*) a
      write(6,*) d
      goto 30
 20   write(6,*) ' ## test c16 OK ## '
 30   continue
      end      
