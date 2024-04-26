      common /com/k,n,m
      integer a(1000),s,t

      do i=k,n,m               
        s=k+n+m
        a(i)=s+1
        t=a(i)
      end do
        
      do i=k,n,m               
        if (a(i).ne.(k+n+m+1))   stop 'ng' 
      end do
      if (t.ne.(k+n+m+1))        stop 'ng'

      if (i.ne.n+m)              stop 'ng'
   
      print *,'ok'
      end

      block data bk
      common /com/k,n,m
      data k,n,m/1,1000,1/
      end
