      integer*4 a(10)/1,2,3,4,5,6,7,8,9,0/
      integer*4 amax,amin
      real*4 b(10)/1.0,2.4,2.3,1.4,5.5,3.6,6.7,2.8,1.9,3.0/
      real*4 bmax,bmin
      real*8 c(10)/1.01,1.24,0.23,1.41,2.55,3.61,1.67,2.82,1.93,3.0/
      real*8 cmax,cmin
      real*8  d(10)/1.25d+1,0.28d+1,3.45d-1,1.98d+2,3.13d+1,8.57d-2,
     $6.5d+1,1.45d+2,7.23d-1,5.16d+1/
      real*8  dmax,dmin
      amax = 0
      bmax = 0.0
      cmax = 0.0
      dmax = 0.0d+0
      do 10 n=1,100
      do 10 i=1,n
        if(i.gt.10) go to 100
        amax = max(a(i),amax)
 10   continue
 100  continue
      amin = amax
      do 20 n=1,100
      do 20 i=1,n
        if(i.gt.10) go to 200
        amin = min(a(i),amin)
 20   continue
 200  continue
      do 30 i=1,10
        bmax = max(b(i),bmax)
 30   continue
      bmin = bmax
      do 40 i=1,10
        bmin = min(b(i),bmin)
 40   continue
      do 50 i=1,10
        cmax = max(c(i),cmax)
 50   continue
      cmin = cmax
      do 60 i=1,10
        cmin = min(c(i),cmin)
 60   continue
      do 70 i=1,10
        dmax = max(d(i),dmax)
 70   continue
      dmin = dmax
      do 80 i=1,10
        dmin = min(d(i),dmin)
 80   continue
      write(6,*) ' ## integer*4 ## '
      write(6,*) ' max = ',amax
      write(6,*) ' min = ',amin
      write(6,*) ' ## real*4 ## '
      write(6,*) ' max = ',bmax
      write(6,*) ' min = ',bmin
      write(6,*) ' ## real*8 ## '
      write(6,*) ' max = ',cmax
      write(6,*) ' min = ',cmin
      write(6,*) ' ## real*16 ## '
      write(6,*) ' max = ',dmax
      write(6,*) ' min = ',dmin
      stop
      end
