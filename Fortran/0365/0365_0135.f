      integer ::a(1000)=0
      do i=1,1000
        j=i-5*(i/5)
        goto (20,30,40,50),j
   10    a(i)=a(i)+0
         goto 100
   20    a(i)=a(i)+1
         goto 100
   30    a(i)=a(i)+2
         goto 100
   40    a(i)=a(i)+3
         goto 100
   50    a(i)=a(i)+4
         goto 100
  100  continue 
      end do

      do i=1,1000
       if (a(i).ne.(i-5*(i/5)))   stop 'ng'
      end do
      print *,'ok'
      end
