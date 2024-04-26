      pointer(p,v)
      integer,allocatable ::a(:)
      integer v(10),b(1000)
      allocate (a(10))
      p = loc(a)
      v(10)=0
      do i=1,1000
        b(i)=1
        v(10)=v(10)+b(i)
      end do
 
      do i=1,1000
        if (b(i).ne.1)  stop 'ng'
      end do
      if (v(10).ne.1000)  stop 'ng'
      print *,'ok'
      end
