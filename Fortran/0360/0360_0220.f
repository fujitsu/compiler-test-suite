      real*8 r8a(2,10)/20*0/,r8b(10)/10*0/
      logical ll(10)/5*.false.,5*.true./

      do i=1,10
         if (ll(i)) r8a(2,i) = 3
      enddo
      write(6,*) r8a
      do i=1,10
         if (ll(i)) r8b(i) = 3
      enddo
      write(6,*) r8b
      end
