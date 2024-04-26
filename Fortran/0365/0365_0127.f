      pointer(p,v)
      integer a,v,b(1000)
      p = loc(a)
      v=0
      do i=1,1000
        b(i)=i
        v=v+b(i)
      end do
 
      do i=1,1000
        if (b(i).ne.i)  stop 'ng'
      end do
      if (v.ne.500500)    stop 'ng'
      print *,'ok'
      end
