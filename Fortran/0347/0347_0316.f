      common /blk1/ a(20),b(20),c(20)
      common /blk2/ x,y,z
      equivalence (z,w),(v,c(20))
      do 10 i=1,20
        a(i)=float(i)
        b(i)=1.
        c(i)=-(float(22-i))
  10  continue
      x=0.
      y=1.
      z=100.
      do 20 i=1,20
        x=x+a(i)
        y=amax1(y,c(i))
        w=amin1(w,x)
        a(i)=x
        y=amax1(y,b(i))
        b(i)=w
        x=x+c(i)
        c(i)=y
        z=z+amin1(a(i),b(i))
        c(i)=z
  20  continue
      write(6,*) ' x=',x
      write(6,*) ' y=',y
      write(6,*) ' z=',z
      do 30 i=2,19
        v=v+a(i)
        v=v+b(i)
  30  continue
      write(6,*) v
      do 40 i=2,18
        w=a(i)+abs(b(i))
        w=w+c(i)
        v=w+b(i)
        w=v+a(i)
        call  sub
        v=v+a(i)
        a(i)=w-c(i)
        b(i)=v-b(i)
  40  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
      subroutine sub
      common /blk2/ x,y,z
      x=x+1.
      y=y-1.
      return
      end
