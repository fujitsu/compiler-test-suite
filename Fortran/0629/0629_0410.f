      real a(100,100),b(1000),c(10000)
      do i=1,10000
         c(i)=i+3
      enddo
      do 10 j=1,5
         do 10 i=1,5
 10   a(i,j)=i+3
      do j=1,1000
         b(j)=j+5
      enddo
      if (a(5,5).eq.8 .and.b(5).eq.10.and.c(5).eq.8) then
         write(6,*) ' OK '
      else
         write(6,*) ' NG ',a(5,5),b(5),c(5)
      endif

      end
