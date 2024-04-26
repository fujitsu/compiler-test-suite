      integer a(1000),s
      s=-1
     
      do i=1,1000
       a(i)=1
       s=s+a(i)
      end do

      do i=1,1000
        if (a(i).ne.1)  stop 'ng'
        if (s.eq.-1)    stop 'ng'
      end do
      print *,'ok'
      end
