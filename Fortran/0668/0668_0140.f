      real       r4$$1(10,10,10)/1000*2/,r4a/1/
      real       r4$01(10,10),r4001(10)/10*3.1/
      integer    i4$01(10,10),i4$02(10,10),i4001(10)/10*2/
      real*8     r8001(10)/10*1./,r8a/0/
      complex    c8001(10),c8a/(0,0)/
      complex    c8$01(10,10)/100*(2.1,2.2)/
      complex*16 c16$01(10,10)/100*(3.1,3.2)/
      integer    i4a/1/,i4b/0/,i4c/0/
      logical    l4a/.false./
      complex*16 c16a/(2.,3.)/,c16b/(2.,1.)/
      complex*16 c16001(20)/20*(1.1,1.2)/
      integer    xx(10)/1,0,2,0,0,1,1,2,1,0/
      integer    yy(10)/1,0,1,1,0,0,1,2,2,2/
      integer    idx(10)/1,2,5,5,1,8,7,6,5,3/,x/0/
      data    r4$01/50*2.5,50*2.6/
      data    i4$01/100*1/,i4$02/50*2,50*3/
      data    c8001/10*(1.2,2.3)/
      if(xx(1).gt.0) then
        do 10 i=1,10
          i4a = c16b
          do 11 j=1,10
            i4b = i4$01(idx(j),i)/i4a
   11     continue
          do 12 j=1,10
            i4c = i4$02(idx(j),i)*i4a
            c16a = i4c**2
          if(yy(j).eq.1) then
            r4a = (i4b * yy(j)) - c8001(j)
          else
            r4a = (i4c * yy(j)) - c8001(j)
          endif
          c8001(j) = c16$01(j,i) + c16$01(j,i)
          i4b = c8$01(j,2) + c8$01(j,6)
          i4c = imag(c8$01(j,2)) + r4a
          c16001(j) = c16001(j) + c8001(j)
          l4a = (dimag(c16001(j)))+(dimag(c16001(j))).gt.r8a
   12     continue
          if(r4a-1) 20,30,30
   20     l4a = i4b .gt. i4c
          goto 77
   30     l4a = 1 .gt.i4a
          do 13 j=1,10
            do 14 k=1,10
              do 15 l=1,10
                r8a = r8001(l)-c16$01(k,l)+r4$$1(j,k,l)
   15         continue
   14       continue
   13     continue
   10   continue
      endif
      if(yy(1).gt.0) then
        zz=100
        do 40 i=1,10
          i4001(i) = zz
   40   continue
        do 41 j=1,10
          i4c = i4$02(3,idx(j))*i4a
          if(yy(j).eq.1) then
            do 42 k=1,10
              do 42 l=1,10
                i4b = i4b + i4001(j)
   42           r4$01(k,l) = i4b + i
          else
            do 43 k=1,10
              z=2
              do 43 l=1,10,z
   43           r4$01(k,l) = i/3
          endif
          if(r4$01(2,3).le.100) then
            c16001(i) = c8$01(j,2) + c8$01(j,6)
            c16001(i) = c16001(j) + c8001(j)
          endif
          c8a=c16001(i)/0.5
          x=0
          if(x-1) 44,45,45
   44     l4a = i4b .gt. i4c
          goto 88
   45     l4a = 1 .gt.i4a
          do 50 k=1,10,2
            do 50 l=1,10
              do 50 m=1,10,2
                r8a = r8001(m)+c16001(m)
                r4a = r8a/c16001(m)
                if(l4a) r4a=i4a+m
                r4a=i4a**2+1.1
                c8$01(m,m) = (r4a+i4b+m)
                c8a = c8$01(m,5)
   50     continue
   41   continue
      endif
      goto 77
   88 do 90 i=1,10,2
        r8a = r4001(i)
   90 continue
   77 write(6,*) '* result *'
      write(6,*) i4a,i4b,i4c
      write(6,*) r4a
      write(6,*) r8a
      write(6,*) c8a
      write(6,*) c16a
      write(6,*) l4a
      stop
      end
