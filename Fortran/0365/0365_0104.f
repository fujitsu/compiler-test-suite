      integer a(1000),b,c(10)
      call sub(a,b,c)
      end
      
      subroutine sub(a,b,c)
      integer a(1000),b,c(10)

      do i=1,1000
        a(i)=i
        b=a(i)
      end do
        
      if (b   .ne.a(1000))  stop 'ng' 

      do i=1,1000
        a(i)=a(i)+i
        c(1)=a(i)
      end do
        
      if (c(1).ne.a(1000))  stop 'ng' 
      do i=1,1000
        if (a(i).ne.(i+i))  stop 'ng' 
      end do
   
      print *,'ok'
      end
