      integer a(1000),s,t
      s=-1
      t= 0
     
      do i=1,1000
       a(i)=1
       s=s+a(i)
       t=t+a(i)
      end do

      do i=1,1000
        if (a(i).ne.1)  stop 'ng'
      end do

      if (t.ne.1000)    stop 'ng'
      print *,'ok'
      end
