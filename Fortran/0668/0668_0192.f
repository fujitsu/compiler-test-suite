      integer int11(10,10)/25*0,50*1,25*2/,int12(10,10)/100*0/,
     +        int21(10,10)/10*0,50*1,20*2,20*3/,int22(10,10)/100*0/,
     +        int31(10,10)/20*0,30*1,10*2,40*3/,int32(10,10)/100*0/,
     +        int41(10,10)/20*0,30*1,10*2,40*3/,int42(10,10)/100*0/,
     +        int51(10,10)/20*1,30*3,10*5,40*9/,int52(10,10)/100*0/,
     +        int61(10,10)/15*2,45*4,20*6,20*8/,int62(10,10)/100*0/,
     +        int71(10,10)/20*1,40*3,10*8,30*9/,int72(10,10)/100*0/,
     +        int81(10,10)/20*0,30*1,10*2,40*3/,int82(10,10)/100*0/,
     +        int91(10,10)/10*0,50*1,20*2,20*3/,int92(10,10)/100*0/,
     +        int01(10,10)/15*2,45*4,20*6,20*8/
      do 100 i=1,10
       int11(i,i)=i
       do 110 j=1,10
        if((int11(1,1).ge.int11(2,2))
     +     .and.(int11(3,3).lt.int11(4,4))) goto 110
        int12(i,j)=int11(i,j)-j
 110   continue
 100  continue
      write(6,*) ' **** loop 1 ***** '
      write(6,1000) int12
       do 200 j=1,8
        if((int21(1,j).ge.int22(1,j))
     +  .and.(int22(1,j+1).lt.int22(1,j+2))) goto 200
        int22(1,j)=int21(1,j)-j
  200  continue
      write(6,*) ' **** loop 2 ***** '
      write(6,1000) int22
      do 300 i=1,10
       k=i
       do 310 j=1,10
        if((k.gt.1).and.(k.lt.10)) int32(i,j)=int31(i,j)*2
 310   continue
 300  continue
      write(6,*) ' **** loop 3 ***** '
      write(6,1000) int32
      do 400 i=1,10
         n=i
       do 410 j=1,10
        if((n.eq.j).and.(j.lt.5)) goto 410
         int42(i,j)=mod(int41(i,j),2)
  410  continue
  400 continue
      write(6,*) ' **** loop 4 **** '
      write(6,1000) int42
       nsum=1
       do 500 j=1,10
        if((int51(1,j)-j).ne.int52(1,j).and.(j.ge.5)) nsum=nsum+1
  500  continue
      write(6,*) ' **** loop 5 **** '
      write(6,1001) nsum
      do 610 i=1,10
       int61(i,i)=i
       do 620 j=1,10
        if((int61(1,1).ge.int61(2,2))
     +  .or.(int61(3,3).lt.int61(4,4))) goto 620
        int62(i,j)=int61(i,j)-j
 620   continue
 610  continue
      write(6,*) ' **** loop 6 ***** '
      write(6,1000) int62
      i=i-1
       do 700 j=1,8
        if((int71(i,j).le.int71(j,i))
     +  .or.(int71(i,j+1).eq.int71(j+1,i))) goto 700
        int72(i,j)=int71(i,j)-j
  700  continue
      write(6,*) ' **** loop 7 ***** '
      write(6,1000) int72
      do 800 i=1,10
       n=i
       do 810 j=1,10
        if((n.eq.1).or.(n.eq.10)) int82(i,j)=int81(i,j)*2
 810   continue
 800  continue
      write(6,*) ' **** loop 8 ***** '
      write(6,1000) int82
      do 900 i=1,10
         n=i
       do 910 j=1,10
        if((n.eq.j).or.(j.lt.5)) goto 910
         int92(i,j)=mod(int91(i,j),2)
  910  continue
  900 continue
      write(6,*) ' **** loop 9 **** '
      write(6,1000) int92
       nsum=1
       do 1100 j=1,10
        if((int01(1,j)-j).ne.int01(1,j).or.(j.ge.5)) nsum=nsum+1
 1100  continue
      write(6,*) ' **** loop 10 **** '
      write(6,1001) nsum
 1000 format(10i4)
 1001 format(i4)
      stop
      end
