      integer a(100),b(100)
     
      do i=1,100
       a(i)=0
       do j=1,100
         a(i)=a(i)+1
       end do
      end do

      do i=1,100
       b(i)=0
       do j=1,10000000
         b(i)=b(i)+1
         b(i)=b(i)-1
         b(i)=b(i)+1
         b(i)=b(i)-1
         b(i)=b(i)+1
         b(i)=b(i)-1
         b(i)=b(i)+1
         b(i)=b(i)-1
         b(i)=b(i)+1
         b(i)=b(i)-1
         b(i)=b(i)+1
       end do
      end do
      
      do i=1,100
        if (a(i).ne.100)      stop 'ng'
        if (b(i).ne.10000000) stop 'ng'
      end do
      print *,'ok'
      end
