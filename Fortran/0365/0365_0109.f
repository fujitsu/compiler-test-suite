      integer a(1000),b(10)

      b(1)=0
      do i=1,1000
        a(i)=i
        b(1)=b(1)+a(i)
        b(2)=a(i)
      end do
        
      if (b(1).ne.500500 )  stop 'ng' 
      if (b(2).ne.a(1000))  stop 'ng' 

      do i=1,1000
        if (a(i).ne.i)  stop 'ng' 
      end do
   
      print *,'ok'
      end
