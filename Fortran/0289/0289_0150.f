      program main
      real*4 a(5),b(5,5),c(5),d(5),e(5)
      data e/5*0.0/
      a(1)=0.0
      do 10 i=1,4
        a(i+1)=a(i)+1.0
   10 continue
      do 20 i=1,5
        do 30 j=-1,3
          a(j+2)=a(j+2)+1.0
   30   continue
        do 20 j=1,5
          b(j,i)=a(j)
   20 continue
      do 40 i=1,5
        c(6-i)=b(1,6-i)+b(2,6-i)+b(3,6-i)+b(4,6-i)+b(5,6-i)
   40 continue
      do 50 i=1,5
        d(i)=b(1+0,i)
        d(i)=d(i)+b(1+1,i)
        d(i)=d(i)+b(1+2,i)
        d(i)=d(i)+b(1+3,i)
        d(i)=d(i)+b(1+4,i)
   50 continue
      do 60 i=1,5
        do 60 j=1,5
          e(i)=e(i)+b(j,i)
   60 continue
      iflag=0
      do 100 i=1,5
        if(c(i).ne.d(i)) then
          iflag=iflag+1
          goto 1000
        endif
  100 continue
 1000 do 110 i=1,5
        if(c(i).ne.e(i)) then
          iflag=iflag+2
          goto 2000
        endif
  110 continue
 2000 continue
      if(iflag.eq.0) then
        write(6,*) '*** ok ***'
        else if(iflag.eq.1.or.iflag.eq.3) then
          write(6,*) '*** (loop 40-50)  ng ***'
        else if(iflag.eq.2.or.iflag.eq.3) then
          write(6,*) '*** (loop 40-60)  ng ***'
      endif
      stop
      end
