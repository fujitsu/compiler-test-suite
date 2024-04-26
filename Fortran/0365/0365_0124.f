      pointer(p,v)
      integer,allocatable ::a(:)
      integer v(10),b(1000)
      allocate (a(10))
      p = loc(a)
      v(10)=10
      do i=1,1000
        b(i)=v(10)
      end do
 
      do i=1,1000
        if (b(i).ne.10)  stop 'ng'
      end do
      print *,'ok'
      end
