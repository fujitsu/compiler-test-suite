      real*4 e1(10),e2(10),e3(10),a(10)
      data   e1/1,2,3,4,5,6,5,4,3,2/
      data   e2/1,2,3,4,5,6,7,8,9,0/
      data   e3/1,2,3,4,5,6,7,8,9,0/
      data   a  /0,0,1,2,3,-6,-7,-8,-9,10/
      do 10 i=1,10
        e2(i)=-e1(i)
   10 continue
      x1=-1000
      x2=-1000
      x3=-1000
      x4=-1000
      x5=-1000
      y1=1000
      y2=1000
      y3=1000
      y4=1000
      do 20 i=1,10
        if (a(1).eq.0) then
         x1=max(x1,e1(i))
         x2=max(x2,e2(i))
         x3=max(x3,e3(i))
        else
         y1=min(y1,e1(i))
         y2=min(y2,e2(i))
         y3=min(y3,e3(i))
        end if
        if (e3(i).gt.x5) then
         ix5=i
         x5=e3(i)
        end if
        if (a(i).gt.0) then
         x4=max(x4,e1(i))
         y4=min(y4,e2(i))
        end if
  20  continue
      write(6,*) x1,x2,x3,x4,x5,y1,y2,y3,y4,ix5
      stop
      end
