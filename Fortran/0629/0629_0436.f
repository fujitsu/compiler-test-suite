      program main
      real*4 a(10),b(10),x
      x=10.0
      do i=1,10 
         a(i)=i
      enddo
      x=0.0
      do j=1,10 
         b(j)=sqrt(x);
         x=x+a(j)
      enddo
      print *,"*** test1 ***"
      print *,x
      print *,a
      print *,b
      end
