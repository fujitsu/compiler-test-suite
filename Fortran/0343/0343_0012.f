      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
c
31500 format(1h0,1x,4h*ok*,4x,1h( ,i3,2h ))
31510 format(1h0,1x,7h*error*,1x,1h( ,i3,2h ))
31520 format(1h0,1x,4h*ok* )
31530 format(1h0,1x,7h*error* )
31550 format( // 19h + justice + item +,15x,19h+ computed result +,
     *       19x,17h+ compare value +,31x,14h+ difference + / )
      i9keyc=1
      if (i9keyc.eq.0) go to 32010
32000 write(6,31550)
32010 i9keyc = i9keyc + 1
      i9data=0
      i9errc=0
      i9ans1=0
      i = 1
      do 100 j=1,5
      go to ( 10,11,11 ),i
   10 i9ans1 = 1
   11 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23000
      if(i9keyc.eq.1) go to 23100
      write(6,31510) i9data
      go to 23100
23000 if(i9keyc.eq.1) go to 23200
      write(6,31500) i9data
      go to 23200
23100 i9errc = i9errc + 1
23200 i9ans1=0
      go to 1
  100 continue
    1   continue
c
      i = 3
      do 200 j1=1,5
      go to ( 20,20,22 ),i
   22 i9ans1 = 1
   20 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23001
      if(i9keyc.eq.1) go to 23101
      write(6,31510) i9data
      go to 23101
23001 if(i9keyc.eq.1) go to 23201
      write(6,31500) i9data
      go to 23201
23101 i9errc = i9errc + 1
23201 i9ans1=0
      go to 2
  200 continue
    2   continue
c
      i = 2
      i9ans1 = 1
      do  300  j1=1,2
      do  300  j2=2,3
      do  300  j3=j1,j2
      do  300  j4=4,5
      do  300  j5=5,6
      do  300  j6=j4,j5,2
      do  300  j7=7,8
      do  300  j8=8,9
      do  300  j9=j7,j8,2
      do  300  j10=1,1
      do  300  j11=2,2
      do  300  j12=1,2
      do  300  j13=j1,j12
      do  300  j14=1,1,1
      do  300  j15=15,16
      go to ( 34,300,34,34,34,34 ),i
   34 i9ans1 = 0
  300 continue
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23002
      if(i9keyc.eq.1) go to 23102
      write(6,31510) i9data
      go to 23102
23002 if(i9keyc.eq.1) go to 23202
      write(6,31500) i9data
      go to 23202
23102 i9errc = i9errc + 1
23202 i9ans1=0
c
      i = 5
      i9ans1 = 1
      do  400  j1=1,2
      do  400  j2=2,3
      do  400  j3=3,4
      do  400  j4=4,5
      do  400  j5=5,6
      do  400  j6=6,7
      do  400  j7=7,8
      do  400  j8=8,9
      do  400  j9=9,10
      do  400  j10=j1,j2
      do  400  j11=j2,j3
      do  400  j12=j3,j4
      do  400  j13=j4,j5
      do  400  j14=j5,j6
      do  400  j15=j6,j7
      go to ( 45,45,45,45,400,45 ),i
   45 i9ans1 = 0
  400 continue
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23003
      if(i9keyc.eq.1) go to 23103
      write(6,31510) i9data
      go to 23103
23003 if(i9keyc.eq.1) go to 23203
      write(6,31500) i9data
      go to 23203
23103 i9errc = i9errc + 1
23203 i9ans1=0
c
      i = 6
      i9ans1 = 1
      do  500  j1=1,2
      do  500  j2=2,3
      do  500  j3=3,3
      do  500  j4=j1,j3,2
      do  500  j5=j2,j4,2
      do  500  j6=1,3,1
      do  500  j7=1,4,2
      do  500  j8=1,5,3
      do  500  j9=1,6,4
      do  500  j10=2,3,1
      do  500  j11=3,5,2
      do  500  j12=4,8,3
      do  500  j13=5,13,5
      do  500  j14=6,21,8
      do  500  j15=11,34,13
      go to (50,50,50,50,50,500 ),i
   50 i9ans1 = 0
  500 continue
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23004
      if(i9keyc.eq.1) go to 23104
      write(6,31510) i9data
      go to 23104
23004 if(i9keyc.eq.1) go to 23204
      write(6,31500) i9data
      go to 23204
23104 i9errc = i9errc + 1
23204 i9ans1=0
c
      i = 50
      do  600  j1=2,3,2
      do  600  j2=1,2,1
      do  600  j3=1,1,1
      go to ( 61,61,61,61,61,61,61,61,61,61,61,61,61,61,61,61,61,61,61,
     1  61,61,61,61,61,61,61,61,61,61,61,61,61,61,61,61,61,61,61,61,61,
     2  61,61,61,61,61,61,61,61,61,60,61 ),i
   61 i=1
  600 continue
      go to 6
   60 i9ans1 = 1
    6 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23005
      if(i9keyc.eq.1) go to 23105
      write(6,31510) i9data
      go to 23105
23005 if(i9keyc.eq.1) go to 23205
      write(6,31500) i9data
      go to 23205
23105 i9errc = i9errc + 1
23205 i9ans1=0
c
      i = 1
      i9ans1 = 1
      do  700  j1=1,2
      do  700  j2=1,1,1
      do  700  j3=13,15,1
      do  700  j4=j2,j1
      do  700  j5=3,8,5
      do  700  j6=1,2
      go to ( 75,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,
     1                                                    70),i
   70 i9ans1 = 0
  700 continue
      go to 77
   75 go to 700
   77 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23006
      if(i9keyc.eq.1) go to 23106
      write(6,31510) i9data
      go to 23106
23006 if(i9keyc.eq.1) go to 23206
      write(6,31500) i9data
      go to 23206
23106 i9errc = i9errc + 1
23206 i9ans1=0
c
      i = 19
      i9ans1 = 1
      do  800  j1=1,2
      do  800  j2=3,4
      do  800  j3=5,5,1
      do  800  j4=2,3,3
      do  800  j5=1,1,1
      do  800  j6=2,5,1
      go to ( 80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,83
     1                                                          ,80 ),i
   80 i9ans = 0
  800 continue
      go to 85
   83 go to 800
   85 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23007
      if(i9keyc.eq.1) go to 23107
      write(6,31510) i9data
      go to 23107
23007 if(i9keyc.eq.1) go to 23207
      write(6,31500) i9data
      go to 23207
23107 i9errc = i9errc + 1
23207 i9ans1=0
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
