      program main
      real ra(100),rb(100),rc(100),rd(100),
     +     re(10,10),rf(10,10),rg(10,10),rh(10,10)
      data ra/10*8,10*7,10*-6,10*2,10*-1,10*9,10*10,10*-5,10*9,10*0/,
     +     rb/10*1,10*2,10*3,10*4,10*5,10*6,10*7,10*-8,10*9,10*-0/,
     +     rc/100*0/,rd/100*0/,n/100/,k/0/,m/10/
  100 do 200 i=1,n
        k=k+1
        if(k.le.9) goto 100
          rc(i)=ra(i)+rb(i)+k*i
          if(rc(i).lt.1000) then
            rc(i)=rc(i)-1
          else
            rc(i)=rc(i)+1
          endif
  200 continue
      write(6,*) ' ************* rc *************'
      write(6,10) rc
   10 format(5f15.6)
      do 300 i=1,100
        if(mod(i,2).eq.2) goto 310
        do 310 j=1,n
          rd(i)=rb(i)*ra(i)
          goto 320
  310   continue
  320   rd(i)=abs(rd(i))
  300 continue
      write(6,*) ' ************* rd *************'
      write(6,10) rd
      do 330 i=1,10
        do 330 j=1,10
          re(i,j)=ra((i-1)*10+j)
          rf(i,j)=rb((i-1)*10+j)
          rg(i,j)=0
  330 continue
      do 400 i=1,n-90
  410   rg(i,i)=ra(i)
        do 500 j=1,n-90
          rg(i,j)=rg(i,j)+re(i,j)*rf(i,j)
          if(rg(i,j).lt.0) then
            re(i,j)=abs(re(i,j))
            rf(i,j)=abs(rf(i,j))
            goto 410
          else
            rg(i,j)=rg(i,j)+1
          endif
  500   continue
  400 continue
      write(6,*) ' ************* rg *************'
      write(6,10) rg
      do 600 i=1,m
        if(i.le.m-5) then
          do 620 j=1,m
            rh(i,j)=re(i,j)-rf(i,j)
  620     continue
        else if(i.gt.m-5) then
          do 630 j=1,m
            rh(i,j)=re(i,j)*rf(i,j)
  630     continue
        else if(i.eq.m) then
          do 610 j=1,m
            rh(i,j)=re(i,j)+rf(i,j)
            if(rh(i,j).ge.0) goto 640
  610     continue
        endif
  600 continue
  640 write(6,*) ' ************* rh *************'
      write(6,10) rh
      stop
      end
