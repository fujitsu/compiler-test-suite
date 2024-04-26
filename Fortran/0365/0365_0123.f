      pointer(p,v)
      integer,allocatable ::a(:)
      integer v(1000)
      allocate (a(1000))
      p = loc(a)
      do i=1,1000
        v(i)=i
      end do
 
      do i=1,1000
        if (v(i).ne.i)  stop 'ng'
      end do
      print *, 'ok'
      end
