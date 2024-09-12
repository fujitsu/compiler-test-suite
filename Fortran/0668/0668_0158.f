      integer*4 a(10)/1,2,3,4,5,6,7,8,9,0/
      integer*4 x(10)/4,5,6,6,7,1,2,7,3,8/
      integer*4 amax,amin,aidx1,aidx2,sa1
      real*4 b(10)/1.0,2.4,2.3,1.4,5.5,3.6,6.7,2.8,1.9,3.0/
      real*4 bmax,bmin,bidx1,bidx2,sa2
      real*8 c(10)/1.01,1.24,0.23,1.41,2.55,3.61,1.67,2.82,1.93,3.0/
      real*8 cmax,cmin,cidx1,cidx2,sa3
      real*8  d(10)/1.25d+1,0.28d+1,3.45d-1,1.98d+2,3.13d+1,8.57d-2,
     $6.5d+1,1.45d+2,7.23d-1,5.16d+1/
      real*8  dmax,dmin,didx1,didx2,sa4
      amax = 0
      bmax = 0.0
      cmax = 0.0
      dmax = 0.0d+0
      do 10 i=1,10
        sa1=amax-a(x(i))
        if(sa1.lt.0) then
          amax=a(x(i))
          aidx1=x(i)
        endif
 10   continue
      amin = amax
      do 20 i=1,10
        sa1=amin-a(x(i))
        if(sa1.gt.0) then
          amin=a(x(i))
          aidx2=x(i)
        endif
 20   continue
      do 30 i=1,10
        sa2=bmax-b(x(i))
        if(sa2.lt.0.0) then
          bmax=b(x(i))
          bidx1=x(i)
        endif
 30   continue
      bmin = bmax
      do 40 i=1,10
        sa2=bmin-b(x(i))
        if(sa2.gt.0.0) then
          bmin=b(x(i))
          bidx2=x(i)
        endif
 40   continue
      do 50 i=1,10
        sa3=cmax-c(x(i))
        if(sa3.lt.0.0) then
          cmax=c(x(i))
          cidx1=x(i)
        endif
 50   continue
      cmin = cmax
      do 60 i=1,10
        sa3=cmin-c(x(i))
        if(sa3.gt.0.0) then
          cmin=c(x(i))
          cidx2=x(i)
        endif
 60   continue
      do 70 i=1,10
        sa4=dmax-d(x(i))
        if(sa4.lt.0.0) then
          dmax=d(x(i))
          didx1=x(i)
        endif
 70   continue
      dmin = dmax
      do 80 i=1,10
        sa4=dmin-d(x(i))
        if(sa4.gt.0.0) then
          dmin=d(x(i))
          didx2=x(i)
        endif
 80   continue
      write(6,*) ' ## integer*4 ## '
      write(6,*) ' max = ',amax
      write(6,*) ' idx = ',aidx1
      write(6,*) ' min = ',amin
      write(6,*) ' idx = ',aidx2
      write(6,*) ' ## real*4 ## '
      write(6,*) ' max = ',bmax
      write(6,*) ' idx = ',bidx1
      write(6,*) ' min = ',bmin
      write(6,*) ' idx = ',bidx2
      write(6,*) ' ## real*8 ## '
      write(6,*) ' max = ',cmax
      write(6,*) ' idx = ',cidx1
      write(6,*) ' min = ',cmin
      write(6,*) ' idx = ',cidx2
      write(6,*) ' ## real*16 ## '
      write(6,*) ' max = ',dmax
      write(6,*) ' idx = ',didx1
      write(6,*) ' min = ',dmin
      write(6,*) ' idx = ',didx2
      stop
      end
