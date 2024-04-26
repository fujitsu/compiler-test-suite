      integer,parameter ::a(1000)=1
      integer s
     
      s=0
      do i=1,1000
       s=s+a(i)
      end do


      do i=1,1000
        if (a(i).ne.1)          stop 'ng'
      end do
      print *,'ok'
      end
