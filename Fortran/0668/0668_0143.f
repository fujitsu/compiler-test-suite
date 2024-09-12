      integer    i4001(10)/10*2/
      integer    i4002(10)/10*3/
      integer    xx(10)/1,0,2,0,0,1,1,2,1,0/,x/1/
      integer    yy(10)/-1,0,0,1,0,1,1,1,0,-1/
      integer    idx(10)/1,5,2,2,9,8,7,4,1,8/
      real       r4001(10)/10*20/
      real       r4max/0/,r4min/0/
      real*8     r8max/0/,r8min/0/
      real*8     r8$$1(10,10)/10*3.,10*8.,10*2.,10*8.,10*7.,
     &                        10*3.,10*8.,10*2.,10*6.,10*7./
      complex    c8a/(0,0)/,c8b/(0,0)/
      complex    c8001(10)/5*(1.1,1.2),5*(1.3,1.4)/
      complex    c8002(10)/5*(1.5,1.6),5*(1.7,1.8)/
      complex    c8003(10)/5*(1.9,2.1),5*(2.2,2.3)/
      integer    i4a/0/
      n=10
      do 10 i=1,n,2
        if(xx(i).ne.0) then
          do 11 j=1,10
            i4a = i4a+i4001(j)
   11     continue
        else
          do 12 j=1,n
            i4a = i4001(j)+i4002(j)
            i4a = mod(i4a,i4001(idx(j)))
   12     continue
        endif
        r4max = r4001(1)
        r4min = r4001(1)
        if(xx(i).gt.-10) then
          if(x.ne.0) then
            if(xx(i).le.100) then
              if(xx(i).ne.0) then
                do 13 j=2,n,2
                  r4max = amax1(r4max,r4001(j))
                  r4min = amin1(r4min,r4001(j))
   13           continue
              else
                do 14 j=2,n,2
                  r4max = r4001(j)/j
                  r4min = r4001(j)+ i4001(idx(j))
   14           continue
              endif
            endif
          endif
        endif
        r8max = r8$$1(1,1)
        r8min = r8$$1(1,1)
        imax = 1
        jmax = 1
        imin = 1
        jmin = 1
        if(yy(i)) 20,21,22
   22     do 15 j=1,n,2
            if(r8max.lt.r8$$1(i,j)) then
              r8max = r8$$1(i,j)
              imax = i
              jmax = j
            endif
   15     continue
          goto 99
   20     do 16 j=1,n
            if(r8min.gt.r8$$1(i,j)) then
              r8min = r8$$1(i,j)
              imin = i
              jmin = j
            endif
   16     continue
          goto 99
   21     do 17 j=1,n
              r8max = r8$$1(i,j)
              r8min = r8$$1(i,j)
   17     continue
   99     continue
        k1=1
        k2=1
        do 18 j=1,n,2
          if(xx(j).gt.0) then
            c8001(k1) = c8002(j)
            k1 = k1+1
          else
            c8002(j) = c8003(k2)
            k2 = k2+1
          endif
   18   continue
        do 19 j=1,n
          c8a = c8001(j)+c8002(j)
          c8b =fun(c8a)
   19   continue
   10 continue
   90 continue
      write(6,*) '** test1 **'
      write(6,*) i4a
      write(6,*) r4max
      write(6,*) r4min
      write(6,*) ' '
      write(6,*) '** test2 **'
      write(6,*) 'r8max=> ',r8max,'  idx=>','(',imax,',',jmax,')'
      write(6,*) 'r8min=> ',r8min,'  idx=>','(',imin,',',jmin,')'
      write(6,*) ' '
      write(6,*) '** test3 **'
      write(6,*) c8a
      write(6,*) c8b
      write(6,*) k1
      write(6,*) k2
      stop
      end
      function fun(c8a)
      complex c800x(10)/10*(2.,2.)/
      complex c8a,c8b
      n=10
      c8b=(2.,1.)
      do 90 i=1,n
        fun = (c800x(i)*10)/i+c8b
        fun = fun+c8a
   90 continue
      return
      end
