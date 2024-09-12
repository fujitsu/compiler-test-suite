      integer*4 a(5,5)/1,2,3,4,5,6,7,8,9,0,-1,-5,12,80,-21,45,0,7,61,8,
     $8,27,-21,24,56/
      integer*4 amax,amin,aidx1(2),aidx2(2)
      real*4 b(5,5)/1.0,-2.4,2.3,-1.4,-5.5,3.6,-6.7,2.8,1.9,3.0,1.6,
     $6.8,-9.8,14.2,10.5,-41.5,65.5,10.2,-23.2,5.57,-1.4,-12.7,6.72,1.8,
     $-14.9/
      real*4 bmax,bmin,bidx1(2),bidx2(2)
      amax = 0
      bmax = 0.0
      do 20 j=1,5
      do 10 i=1,5
        if(i.eq.1.or.i.eq.4.or.j.eq.2.or.j.eq.5) then
        if(amax.lt.a(i,j)) then
          amax=a(i,j)
          aidx1(1)=i
          aidx1(2)=j
        endif
        endif
 10   continue
      amin = amax
      do 20 i=1,5
        if(i.eq.2.or.i.eq.5.or.j.eq.1.or.j.eq.4) then
        if(amin.gt.a(i,j)) then
          amin=a(i,j)
          aidx2(1)=i
          aidx2(2)=j
        endif
        endif
 20   continue
      do 40 j=1,5
      do 30 i=1,5
        if(i.eq.3.or.i.eq.4.or.j.eq.2.or.j.eq.5) then
        if(bmax.lt.b(i,j)) then
          bmax=b(i,j)
          bidx1(1)=i
          bidx1(2)=j
        endif
        endif
 30   continue
      bmin = bmax
      do 40 i=1,5
        if(i.eq.2.or.i.eq.5.or.j.eq.3.or.j.eq.4) then
        if(bmin.gt.b(i,j)) then
          bmin=b(i,j)
          bidx2(1)=i
          bidx2(2)=j
        endif
        endif
 40   continue
      write(6,*) ' ## integer*4 ## '
      write(6,*) ' max = ',amax
      write(6,*) ' idx = ','( ',aidx1(1),', ',aidx1(2),')'
      write(6,*) ' min = ',amin
      write(6,*) ' idx = ','( ',aidx2(1),', ',aidx2(2),')'
      write(6,*) ' ## real*4 ## '
      write(6,*) ' max = ',bmax
      write(6,*) ' idx = ','( ',bidx1(1),', ',bidx1(2),')'
      write(6,*) ' min = ',bmin
      write(6,*) ' idx = ','( ',bidx2(1),', ',bidx2(2),')'
      stop
      end
