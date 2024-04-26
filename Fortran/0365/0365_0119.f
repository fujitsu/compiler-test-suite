      integer*8 ::a(1000)=1,b,c
      integer*8 ::s=z'000000007fffffff',t=1031
      a(1:31:1)=2
      b=1
      c=0
      do i=1,1000
        b=b*a(i)
        c=c+a(i)
      end do
        
      b=b-1

      if (b.ne.s)      stop 'ng' 

      if (c.ne.t)      stop 'ng' 

      print *,'ok'
      end
