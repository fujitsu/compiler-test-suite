      program main
      real a(10),b(10),x
      data b/10*0/

      do i=1,10
         a(i)=i
      enddo

      x=a(10)
      if (x.eq.10) goto 10
      
      do j=1,10
         b(j)=j
      enddo

 10   continue

      print *,a
      print *,b
      print *,x
      end

