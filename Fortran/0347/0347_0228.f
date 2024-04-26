      common  /blk/ c1(20),c2(20)
      complex*8  a(20),b(20),c1,c2,e1(20),e2(20),cx,cy
      equivalence  (e1(1),c1(1)),(e2(1),a(1))
      equivalence  (b(1),cx),(b(2),cy)
      data  a,b/20*(2.,1.),20*(1.,2.)/
      do 10 i=1,20
       c1(i)=a(i)+b(i)
       c2(i)=a(i)*(2.,1.)
  10  continue
      do 20 i=1,15
       c1(i)=a(i+1)+c2(i+1)
       a(i)=c1(i)
  20  continue
      do 30 i=1,15
       cx = cx+a(i)
       c1(i) = c2(i)-cy
  30  continue
      write(6,*) a
      write(6,*) c1
      write(6,*) cx
      stop
      end
