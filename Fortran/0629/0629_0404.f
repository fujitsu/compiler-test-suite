      pointer(p,v)
      integer a,v
      integer b(1000)/995*2,3,4,1,7,6/
      p = loc(a)
      do i=1,1000
        j=i+1
        v=b(i)*j+1
      end do

      write(6,*) v
      end
