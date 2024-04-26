      call sub(2,1000,2)
      end
      
      subroutine sub(k,n,m)
      integer:: a(1000)=0,b(1000),t(1000)

      do i=k,n,m               
        t(i)=a(i)+i
        b(i)=t(i)
      end do
        
      do i=k,n,m               
        if (b(i).ne.(a(i)+i))   stop 'ng' 
      end do
   
      print *,'ok'
      end
