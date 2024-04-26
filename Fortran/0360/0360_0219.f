      real*4 r4a(2,10)/20*0/,r4b(10)/10*0/
      logical ll(10)/5*.false.,5*.true./

      do i=1,10
         if (ll(i)) r4a(2,i) = 3
      enddo
      write(6,*) r4a
      do i=1,10
         if (ll(i)) r4b(i) = 3
      enddo
      write(6,*) r4b
      end
