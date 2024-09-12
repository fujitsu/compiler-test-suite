      program main
      integer i4001(100),i4002(100),i4003(100,100),i4004(100,100)
      integer i4005(100),i4006(100,100),imsk01
      logical lmsk01(100),lmsk02(100,100),lmsk03(100),lmsk04(100,100)
      logical l4001(100),l4002(100,100)
      data i4001/100*1/,i4002/100*2/,l4001/100*.false./
      data i4003/10000*1/,i4004/10000*2/,l4002/10000*.false./
      data i4005/100*7/,i4006/10000*3/,imsk01/0/
      data lmsk01/10*.true.,10*.false.,10*.true.,10*.false.,10*.true.,
     +          10*.false.,10*.true.,10*.false.,10*.true.,10*.false./
      data lmsk02/1000*.true.,1000*.false.,1000*.true.,1000*.false.,
     +          1000*.true.,1000*.false.,1000*.true.,1000*.false.,
     +          1000*.true.,1000*.false./
      data lmsk03/10*.false.,10*.true.,10*.false.,10*.true.,10*.false.
     +          ,10*.true.,10*.false.,10*.true.,10*.false.,10*.true./
      data lmsk04/1000*.false.,1000*.true.,1000*.false.,
     +          1000*.true.,1000*.false.,1000*.true.,1000*.false.,
     +          1000*.true.,1000*.false.,1000*.true./
      do 10 i=1,100
        if (lmsk01(i)) then
          l4001(i) = btest(i4001(i),1)
        endif
   10 continue
      do 20 j=1,100
        do 20 k=1,100
          if (lmsk02(k,j)) then
            l4002(k,j) = btest(i4003(k,j),0)
          endif
   20 continue
      write(6,*)
      write(6,*) ' ###   ### '
      write(6,*)
      write(6,*) ' ## test 1 ## '
      write(6,*) ' l4001(1) = ',l4001(1),' l4002(1,1) = ',l4002(1,1)
      write(6,*) ' l4001(100)    = ',l4001(100)
      write(6,*) ' l4002(100,100)= ',l4002(100,100)
      write(6,*)
      do 30 i=1,100
        if (.not.lmsk03(i)) i4002(i) = ibset(i4005(i),3)
   30 continue
      do 40 j=1,100
        do 40 k=1,100
          if (.not.lmsk04(k,j)) then
            i4004(k,j) = ibset(i4006(k,j),2)
          endif
   40 continue
      write(6,*) ' ## test 2 ## '
      write(6,*) ' i4002(1) = ',i4002(1),' i4004(1,1) = ',i4004(1,1)
      write(6,*) ' i4002(100)    = ',i4002(100)
      write(6,*) ' i4004(100,100)= ',i4004(100,100)
      write(6,*)
      do 50 i=1,100
        if (lmsk03(i)) then
          i4001(i) = 0
        else
          i4001(i) = ibclr(i4002(i),0)
        endif
   50 continue
      do 60 j=1,100
        do 60 k=1,100
          if (lmsk04(k,j)) then
            i4006(k,j) = 0
          else
            if (imsk01.eq.0) i4006(k,j) = ibclr(i4004(k,j),1)
          endif
   60 continue
      write(6,*) ' ## test 3 ## '
      write(6,*) ' i4001(1) = ',i4001(1),' i4006(1,1) = ',i4006(1,1)
      write(6,*) ' i4001(100)    = ',i4001(100)
      write(6,*) ' i4006(100,100)= ',i4006(100,100)
      write(6,*)
      do 70 i=1,100
        do 70 j=1,100
          i4003(i,j) = mod(i4004(i,j),1)
          i4006(i,j) = abs(i4003(i,j))
          i4003(i,j) = ibset(i4006(i,j),1)
          i4006(i,j) = ibclr(i4003(i,j)*2,0)
          if (i4006(i,j).le.i4003(i,j)) then
            l4002(i,j) = btest(i4006(i,j),2)
          endif
   70 continue
      write(6,*) ' ## test 4 ## '
      write(6,*) ' i4003(1,1) = ',i4003(1,1)
      write(6,*) ' i4006(1,1) = ',i4006(1,1)
      write(6,*) ' l4002(1,1) = ',l4002(1,1)
      write(6,*) ' i4003(100,100) = ',i4003(100,100)
      write(6,*) ' i4006(100,100) = ',i4006(100,100)
      write(6,*) ' l4002(100,100) = ',l4002(100,100)
      write(6,*)
      stop
      end
