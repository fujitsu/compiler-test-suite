      program main
      real*4 a(5),b(5,5),c(5),d(5),e(5)
      data e/5*0.0/
      iflag=0
      call sub(a,b,c,d,e,5,iflag)
      if(iflag.eq.0) then
        write(6,*) '*** ok ***'
        else if(iflag.eq.1.or.iflag.eq.3) then
          write(6,*) '*** (loop 40-50)  ng ***'
        else if(iflag.eq.2.or.iflag.eq.3) then
          write(6,*) '*** (loop 40-60)  ng ***'
      endif
      stop
      end
      subroutine sub(v,w,x,y,z,m,k)
      real*4 v(m),w(m,m),x(m),y(m),z(m)
      v(1)=0.0
      do 10 i=1,m-1
        v(i+1)=v(i)+1.0
   10 continue
      do 20 i=1,m
        do 30 j=-1,m-2
          v(j+2)=v(j+2)+1.0
   30   continue
        do 20 j=1,m
          w(j,i)=v(j)
   20 continue
      do 40 i=1,m
        x(m+1-i)=w(1,m+1-i)+w(2,m+1-i)+w(3,m+1-i)
        x(m+1-i)=x(m+1-i)+w(4,m+1-i)+w(5,m+1-i)
   40 continue
      do 50 i=1,m
        y(i)=w(1+0,i)
        y(i)=y(i)+w(1+1,i)
        y(i)=y(i)+w(1+2,i)
        y(i)=y(i)+w(1+3,i)
        y(i)=y(i)+w(1+4,i)
   50 continue
      do 60 i=1,m
        do 60 j=1,m
          z(i)=z(i)+w(j,i)
   60 continue
      do 100 i=1,m
        if(x(i).ne.y(i)) then
          k=k+1
          goto 1000
        endif
  100 continue
 1000 do 110 i=1,m
        if(x(i).ne.z(i)) then
          k=k+2
          goto 2000
        endif
  110 continue
 2000 return
      end
