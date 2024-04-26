      pointer(p,v)
      integer a,v,b(1000)
      p = loc(a)
      do i=1,1000
        b(i)=i
        v=b(i)
      end do
 
      do i=1,1000
        if (b(i).ne.i)  stop 'ng'
      end do
      if (v.ne.1000)    stop 'ng'
      print *,'ok'
      end
