      common/com/k
      integer,parameter::m=1
      integer :: a(1000),n=1000

      do i=k,n,m
        a(i)=m
      end do
        
      do i=k,n,m
        if (a(i).ne.m)   stop 'ng' 
      end do

      if (i.ne.n+m)   stop 'ng'
   
      print *,'ok'
      end
      block data bk
      common/com/k
      data k/1/
      end
