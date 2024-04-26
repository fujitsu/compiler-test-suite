      call sub(2,1000,2)
      end
      
      subroutine sub(k,n,m)
      complex a(1000)

      do i=k,n,m               
        a(i)=i
      end do
        
      do i=k,n,m               
        if (real(a(i)).ne.real(i))   stop 'ng' 
      end do
   
      print *,'ok'
      end
