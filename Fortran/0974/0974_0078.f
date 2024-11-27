      program main
      real a(10),b(10),x,y
      y=0

      do i=1,10
         a(i)=i
      enddo

 10   continue
      x=a(10)+y
      
      do j=1,10
         b(j)=j
      enddo

      y=b(10)

      if (x.eq.10) goto 10
      
      print *,a
      print *,b
      print *,x
      print *,y
      end

