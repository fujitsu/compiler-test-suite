      call sub(1000,2)
      end
      
      subroutine sub(n,m)
      integer*8:: a(1000),b

      do i=2,n,m               
        a(i)=i
        b=a(i)
      end do
        
      do i=2,n,m               
        if (a(i).ne.i)  stop 'ng' 
      end do
      if (b.ne.a(n))    stop 'ng' 
   
      print *,'ok'
      end
