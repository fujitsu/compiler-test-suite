      integer a(1000),s
      complex b(100),t
     
      s=0
      do i=1,1000
       a(i)=1
       s=s+a(i)
      end do

      t=(0.0)
      do i=1,100
       b(i)=(2.0,2.0)
       t=t+b(i)
      end do

      do i=1,1000
        if (a(i).ne.1)          stop 'ng'
        if (s.ne.1000)          stop 'ng'
      end do
      do i=1,100
        if (b(i).ne.(2.0,2.0))  stop 'ng'
        if (t.ne.(200.0,200.0)) stop 'ng'
      end do
      print *,'ok'
      end
