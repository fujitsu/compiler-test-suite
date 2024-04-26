      call sub(0,1,0)
      end
      
      subroutine sub(k,n,m)
      integer a(2,2,2,2,2,2,100)

      do i1=k+1,n+1,m+1
      do i2=1,2
      do i3=k+1,n+1,m+1
      do i4=1,2
      do i5=k+1,n+1,m+1
      do i6=1,2
      do i7=1,100
         a(i1,i2,i3,i4,i5,i6,i7)
     +   =i1+2*i2+(2**2)*i3+(2**3)*i4+(2**4)*i5+(2**5)*i6+(2**5)*100*i7
      end do
      end do
      end do
      end do
      end do
      end do
      end do
        
      do i1=k+1,n+1,m+1               
      do i2=1,2
      do i3=k+1,n+1,m+1
      do i4=1,2
      do i5=k+1,n+1,m+1
      do i6=1,2
      do i7=1,100
         if (a(i1,i2,i3,i4,i5,i6,i7).ne.(i1+2*i2+(2**2)*i3
     +     +(2**3)*i4+(2**4)*i5+(2**5)*i6+(2**5)*100*i7)) stop 'ng' 
      end do
      end do
      end do
      end do
      end do
      end do
      end do
   
      print *,'ok'
      end
