      dimension  a(20),b(20),c(20),x(20),y(20),z(20)
      data  a,b,c/20*1.,20*2.,20*3./
      data  x,y,z/20*6.,20*5.,20*4./,nn/18/

      do 10 j=5,nn
        n4=j-1
        if (a(j).lt.0.) goto 11
          n1=j+1
          n2=1
          if (c(j).lt.z(j)) then
            n3=j+2
 12         b(j)=float(j)
 13         y(j)=float(nn-j)
            do 20 i=2,j
              a(i)=a(n1)+b(i)*c(i)
              x(i)=x(n3)+y(i)*z(i)
              c(i)=c(n2)+a(n2)-x(i)
 20         continue
          endif
          if (a(j).lt.0.) then
            do 30 i=j,nn
              z(i)=z(n4)-b(i)
              y(i)=y(n2)+b(i)
 30         continue
          endif
 11    continue
 10   continue
      n2=n2+1
      write(6,*) a
      write(6,*) c
      write(6,*) x
      write(6,*) z
      stop
      end
