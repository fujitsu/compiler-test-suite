      integer int11(10,10)/25*0,50*1,25*2/,int12(10,10)/100*0/,
     +        int21(10,10)/10*0,50*1,20*2,20*3/,int22(10,10)/100*0/,
     +        int31(10,10)/20*0,30*1,10*2,40*3/,int32(10,10)/100*0/,
     +        int41(10,10)/20*0,30*1,10*2,40*3/,int42(10,10)/100*0/,
     +        int51(10,10)/20*1,30*3,10*5,40*9/,int52(10,10)/100*0/,
     +        int61(10,10)/15*2,45*4,20*6,20*8/,int62(10,10)/100*0/,
     +        int71(10,10)/20*1,40*3,10*8,30*9/,int72(10,10)/100*0/,
     +        int81(10,10)/20*0,30*1,10*2,40*3/,int82(10,10)/100*0/,
     +        insum6(10,10)/100*0/,
     +        insum7(10,10)/100*0/,
     +        insum8(10,10)/100*0/
      do 100 i=1,10
       int11(i,i)=i
       do 110 j=1,10
        if(int11(1,i).ge.int11(2,i)) goto 110
        int12(i,j)=int11(i,j)-j
 110   continue
 100  continue
      write(6,*) ' **** loop 1 ***** '
      write(6,1000) int12
      do 200 i=1,10
       int21(i,i)=i
       do 210 j=1,10
        if(int21(i,i).lt.int21(i,j)) goto 210
        int22(i,j)=int21(i,j)-j
  210  continue
  200 continue
      write(6,*) ' **** loop 2 ***** '
      write(6,1000) int22
      k=5
      do 300 i=1,10
             n=i
       do 310 j=1,10
        if((n-5).le.k) int32(i,j)=int31(i,j)*2
 310   continue
 300  continue
      write(6,*) ' **** loop 3 ***** '
      write(6,1000) int32
      do 400 i=1,10
         n=i
       do 410 j=1,10
        if((n-j).eq.k) int42(i,j)=mod(int41(i,j),3)
  410  continue
  400 continue
      write(6,*) ' **** loop 4 **** '
      write(6,1000) int42
       nsum=1
       do 500 j=1,10
        if((int51(1,j)-j).ne.int52(1,j)) nsum=nsum+1
  500  continue
      write(6,*) ' **** loop 5 **** '
      write(6,1001) nsum
       do 600 j=1,10
        if((int61(1,j)-5).lt.int62(1,j)) insum6(10,10)=insum6(10,10)+1
  600  continue
      write(6,*) ' **** loop 6 **** '
      write(6,1001) insum6(10,10)
       insum7(1,1)=1
       do 700 j=1,10
        if((int71(1,j)-5).ge.int72(2,j)) goto 700
        if((int72(j,1)-5).le.int71(j,2))
     +   insum7(6,6)=insum7(6,6)+insum7(1,1)
  700  continue
      write(6,*) ' **** loop 7 **** '
      write(6,1001) insum7(6,6)
       insum8(1,1)=1
       do 800 j=1,10
        if(int81(1,j)-5.ge.j) goto 800
        insum8(8,8)=insum8(8,8)+1
        if(int82(1,j).le.j) goto 800
        insum8(9,9)=insum8(9,9)+1
  800  continue
      write(6,*) ' **** loop 8 **** '
      write(6,1001) insum8(8,8)
      write(6,1001) insum8(9,9)
 1000 format(10i4)
 1001 format(10i4)
      stop
      end
