      real real1(10,10)/100*0./,real2(10,10)/100*0./
      integer int1(10,10)/25*0,25*1,50*100/,int2(10,10)/100*0/
      logical logic(10,10)/25*.true.,20*.false.,35*.true.,20*.false./
      do 100 i=1,10
       do 110 j=1,10
  120    if(logic(i,j)) goto 110
          real2(i,j)=1.0
          if(mod(i,3)-1) 130,140,150
  130      int2(i,j)=2
           goto 110
  140      int2(i,j)=3
           goto 110
  150      if(int1(i,j).eq.100) then
             int2(i,j)=4
           else
            if(int1(1,j).eq.1) then
             int2(i,j)=5
            else
             int2(i,j)=6
            endif
            real2(i,j)=7
            goto 110
           endif
           real2(i,j)=8
  110  continue
  100 continue
      write(6,*) ' **** loop 1 **** '
      write(6,1000) int2
      write(6,1001) real2
      do 200 i=1,10
       do 210 j=1,10
        if((int2(i,j).eq.0).or.(int2(i,j).eq.3)) then
         if(real2(i,j).eq.8.) goto 220
         int1(i,j)=1
        else if(int2(i,j).ne.5) then
         if(real2(i,j)-7.) 230,240,220
        else
         int1(i,j)=2
        endif
        goto 220
  230   int1(i,j)=3
        goto 210
  240   int1(i,j)=4
        goto 210
  220   real1(i,j)=10.
  210  continue
  200 continue
      write(6,*) ' **** loop 2 **** '
      write(6,1000) int1
      write(6,1001) real1
      do 300 i=1,10
       do 310 j=1,10
        if((i.eq.1).or.(i.eq.2).or.(i.eq.3)) then
         if(i-2) 320,330,340
  330     logic(i,j)=.true.
          int1(i,j)=1
           real2(i,j)=10.
          goto 350
  320     logic(i,j)=.false.
           int1(i,j)=2
           real2(i,j)=20.
          goto 350
  340     logic(i,j)=.true.
          int1(i,j)=3
          real2(i,j)=30.
          goto 350
        else if((i.eq.4).or.(i.eq.5)) then
          if(i.le.4) goto 360
           int1(i,j)=4
           real2(i,j)=40.
           goto 350
  360     real2(i,j)=50.
          int1(i,j)=5
          logic(i,j)=.false.
        else if((i.eq.6).or.(i.eq.7)) then
          if(j.lt.5) logic(i,j)=.true.
          int1(i,j)=6
        else
          logic(i,j)=.false.
          int1(i,j)=7
        endif
  350   real1(i,j)=0.
  310  continue
  300 continue
      write(6,*) ' **** loop 3 **** '
      write(6,1000) int1
      write(6,1001) real1
      write(6,1001) real2
      write(6,1002) logic
 1000 format(10i7)
 1001 format(10f7.2)
 1002 format(10l7)
      stop
      end
