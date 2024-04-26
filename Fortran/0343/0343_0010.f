      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
      logical  l,l1
      integer       fdab1
      data     i/1/,isw/0/,l/.true./
      go  to  (1,210,210),i
  201 isw = 1
    1 continue
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
c
      if( isw ) 10,9,10
    9 i9ans1 = 1
   10 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23000
      if(i9keyc.eq.1) go to 23100
      write(6,31510) i9data
      go to 23100
23000 if(i9keyc.eq.1) go to 23200
      write(6,31500) i9data
      go to 23200
23100 i9errc = i9errc + 1
23200 i9ans1=0
c
      i = 2
      go  to  ( 15,32766,15 ),i
  202 go to 15
32766 i9ans1 = 1
   15 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23001
      if(i9keyc.eq.1) go to 23101
      write(6,31510) i9data
      go to 23101
23001 if(i9keyc.eq.1) go to 23201
      write(6,31500) i9data
      go to 23201
23101 i9errc = i9errc + 1
23201 i9ans1=0
c
      i = 3
      go to ( 20,20,32769 ),i
  214 go  to  20
32769 do 16 j=1,1
   16 i9ans1 = 1
   20 i9data = i9data + 1
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
      i = 1
      go to ( 99999,25,25 ),i
  203 go to 25
99999 if( 10 .gt. 1 )  go to 21
      go to 25
   21 i9ans1 = 1
   25 i9data = i9data + 1
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
      j = 0
      i = 2
      go to ( 30, 26,30 ),i
  204 go to 30
   26 call  sdab0(j)
      if( j - 1 )  30,27,30
   27 i9ans1 = 1
   30 i9data = i9data + 1
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
      j = fdab1(0)
      if( j ) 35,31,35
   31 i9ans1 = 1
   35 i9data = i9data + 1
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
      go to 37
   36 go to 38
  205 if( isw ) 40,40,40
   37 continue
      if( l )  go  to  ( 36,40,40 ),i
  206 go to 40
   38 i9ans1 = 1
   40 i9data = i9data + 1
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
      i = 2
      go to 42
   41 go to ( 45,43,45 ),i
  207 go to  45
   42 continue
      if( l )  go  to  ( 45,41,45 ),i
  208 go to 45
   43 i9ans1 = 1
   45 i9data = i9data + 1
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
      i = 3
      assign 48 to j
      go to 47
   46 go to j,( 48,50 )
  209 go to 50
   47 continue
      if( l )  go  to  ( 50,50,46 ),i
  210 go to 50
   48 i9ans1 = 1
   50 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23008
      if(i9keyc.eq.1) go to 23108
      write(6,31510) i9data
      go to 23108
23008 if(i9keyc.eq.1) go to 23208
      write(6,31500) i9data
      go to 23208
23108 i9errc = i9errc + 1
23208 i9ans1=0
c
      i = 1
      go to 52
   51 read(5,900) j
  900 format(i2)
      if( j - 9 ) 55,53,55
   52 go to ( 51,55,55 ),i
  211 go to 55
   53 i9ans1 = 1
   55 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23009
      if(i9keyc.eq.1) go to 23109
      write(6,31510) i9data
      go to 23109
23009 if(i9keyc.eq.1) go to 23209
      write(6,31500) i9data
      go to 23209
23109 i9errc = i9errc + 1
23209 i9ans1=0
c
      i = 2
      go to 57
   56 write(6,901)
  901 format(1h0, 80x,9hitem (11) )
      go to 58
   57 go to ( 60,56,60 ) , i
  212 go to 60
   58 i9ans1 = 1
   60 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23010
      if(i9keyc.eq.1) go to 23110
      write(6,31510) i9data
      go to 23110
23010 if(i9keyc.eq.1) go to 23210
      write(6,31500) i9data
      go to 23210
23110 i9errc = i9errc + 1
23210 i9ans1=0
c
      i = 3
      l1=.false.
      go to 62
   61 l1=.true.
      if( l1 ) go to 63
      go  to  65
   62 go to ( 65,65,61 ),i
  213 go to 65
   63 i9ans1 = 1
   65 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23011
      if(i9keyc.eq.1) go to 23111
      write(6,31510) i9data
      go to 23111
23011 if(i9keyc.eq.1) go to 23211
      write(6,31500) i9data
      go to 23211
23111 i9errc = i9errc + 1
23211 i9ans1=0
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
c
31570 format(1h1 // 19h + justice + item +,14x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
c
      item = 13
      i = 1
      go to 70
   67 write(6,31510)  item
   66 stop
   70 go to ( 66,67,67 ),i
      end

      integer function fdab1 (j)
      fdab1 = j
      i = 3
      go to ( 10,11,12 ),i
   10 continue
   11 fdab1 = 1
   12 return
      end

      subroutine sdab0(j)
      j=1
      return
      end
