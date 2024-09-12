      integer int11(10,10)/100*1/,int12(10,10)/100*0/,
     +        int21(10,10)/100*1/,int22(10,10)/100*0/,
     +        int31(10,10)/100*1/,int32(10,10)/100*0/,
     +        int41(10,10)/100*1/,int42(10,10)/100*0/,
     +        int51(10,10)/100*1/,
     +        int61(10,10)/100*1/,int62(10,10)/100*0/,
     +        insum6(10,10)/100*0/
      do 100 i=1,10
       int11(i,i)=i
       do 110 j=1,10
        if(int11(i,i)-5) 120,130,140
 130    int12(i,j)=j
        goto 110
 140    int12(i,j)=int11(i,j)
        goto 110
 120    int12(i,j)=int11(i,j)-j
 110   continue
 100  continue
      write(6,*) ' **** loop 1 ***** '
      write(6,1000) int12
      do 200 i=1,10
       int21(i,i)=i
       do 210 j=1,10
        if(int21(i,j)-5) 220,230,240
  220   int22(i,j)=j
        goto 210
  230   int22(i,j)=int21(i,j)
        goto 210
  240   int22(i,j)=int21(i,j)-j
  210  continue
  200 continue
      write(6,*) ' **** loop 2 ***** '
      write(6,1000) int22
      do 300 i=1,10
             n=i
       do 310 j=1,10
        if(n-5) 320,330,340
 330    int32(i,j)=j
        goto 310
 340    int32(i,j)=int31(i,j)
        goto 310
 320    int32(i,j)=int31(i,j)-j
 310   continue
 300  continue
      write(6,*) ' **** loop 3 ***** '
      write(6,1000) int32
      do 400 i=1,10
         n=i
       do 410 j=1,10
        if(n-j) 420,430,440
  430   int42(i,j)=j
        goto 410
  420   int42(i,j)=int41(i,j)
        goto 410
  440   int42(i,j)=int41(i,j)-j
  410  continue
  400 continue
      write(6,*) ' **** loop 4 **** '
      write(6,1000) int42
       nsum=1
       do 500 j=1,10
        if(int51(j,j)-j) 510,500,510
  510   nsum=nsum+1
  500  continue
      write(6,*) ' **** loop 5 **** '
      write(6,1001) nsum
       insum6(1,1)=1
       do 600 i=1,10
        do 610 j=1,10
        if(int61(j,j)-5) 620,610,620
  620   insum6(1,1)=insum6(1,1)+int62(i,i)
  610  continue
  600   continue
      write(6,*) ' **** loop 6 **** '
      write(6,1001) insum6(1,1)
 1000 format(10i4)
 1001 format(i4)
      stop
      end
