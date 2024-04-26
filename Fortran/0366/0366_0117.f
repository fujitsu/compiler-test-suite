      common/com/a
      real c(1000),d(1000)
      real,parameter ::p=3.0

      c=2.0
      do i=1,1000
        a=c(i)+1.0
        d(i)=a
        call sub(d(i),p)
      end do
      do i=1,1000
        if (c(i).ne.2.0)   stop 'ng'
        if (d(i).ne.3.0)   stop 'ng'
      end do
      if (a.ne.3.0)   stop 'ng'
      print *,'ok'
      end

      recursive subroutine sub(d,p)
      integer d,p
      if (d.ne.p)   stop 'ng'
      end
      
