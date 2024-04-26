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
c
31600 format(1h+, 9x,1h( ,i3,2h ),21x,i15,21x,i15 )
c
          i9ans1=0
          go to 2
    1     i9ans1=i9ans1+1
          go to 3
    2     do 3 i=1,2
          do 3 j=1,1
          i9ans1=i9ans1+1
          go to 1
    3     i9ans1=i9ans1
          i9comp=4
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23300
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23500
      write(6,31530)
      go to 23400
23300 if( i9keyc.eq.1 ) go to 23500
      write(6,31520)
23400 write(6,31600) i9data,i9ans1,i9comp
23500 i9ans1=0
c
          assign 7 to m
          go to 5
    4     assign 6 to m
          i9ans1=i9ans1+1
          go to m,(6,7)
    5     do 6 i=3,4
          do 6 j=1,2
          assign 4 to m
          i9ans1=i9ans1+1
          go to m,(4,6)
    6     continue
    7     i9comp=8
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23301
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23501
      write(6,31530)
      go to 23401
23301 if( i9keyc.eq.1 ) go to 23501
      write(6,31520)
23401 write(6,31600) i9data,i9ans1,i9comp
23501 i9ans1=0
c
          m=0
          do 8 i=1,3
          m=m+1
          do 8 j=11,14,3
          i9ans1=i9ans1+1
          go to (8,9,10,11),m
   13     i9ans1=i9ans1+1
    8     continue
          go to 12
    9     i9ans1=i9ans1+1
   10     i9ans1=i9ans1+2
   11     i9ans1=i9ans1+4
          go to (8,8,8,13),m
   12     i9comp=32
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23302
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23502
      write(6,31530)
      go to 23402
23302 if( i9keyc.eq.1 ) go to 23502
      write(6,31520)
23402 write(6,31600) i9data,i9ans1,i9comp
23502 i9ans1=0
c
          m=0
          do 14 i=2,4,2
          do 14 j=1,3
          m=m+1
          if(m-5)  14,15,15
   14     continue
          go to 16
   15     i9ans1=i9ans1+m
          if(m-6)  14,14,16
   16     i9comp=11
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23303
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23503
      write(6,31530)
      go to 23403
23303 if( i9keyc.eq.1 ) go to 23503
      write(6,31520)
23403 write(6,31600) i9data,i9ans1,i9comp
23503 i9ans1=0
c
          m=0
          go to 17
   18     i9ans1=i9ans1+m
          if(m.lt.3)  go to 21
          go to 19
   17     do 20 i=2,3,2
          do 20 j=1,5,3
          m=m+1
          if(m.eq.2)  go to 18
   21     i9ans1=i9ans1+1
   20     continue
   19     i9comp = 4
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23304
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23504
      write(6,31530)
      go to 23404
23304 if( i9keyc.eq.1 ) go to 23504
      write(6,31520)
23404 write(6,31600) i9data,i9ans1,i9comp
23504 i9ans1=0
c
          assign 22 to m
          go to 23
   24     i9ans1=i9ans1*2
          assign 25 to m
          if(i9ans1.ge.0)  go to m,(22,25)
          go to 22
   23     do  26  i=98,99
          do  26  j=1,11,5
          assign 24 to m
          i9ans1=i9ans1+1
          if(i9ans1.gt.4)  go to m,(24,22)
   25     i9ans1=i9ans1+1
   26     continue
   22     i9comp=109
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23305
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23505
      write(6,31530)
      go to 23405
23305 if( i9keyc.eq.1 ) go to 23505
      write(6,31520)
23405 write(6,31600) i9data,i9ans1,i9comp
23505 i9ans1=0
c
          do 27 i=1,3
          do 27 j=3,4
          i9ans1=i9ans1+1
          m=i
          if(i9ans1.gt.2)  go to (28,29,30),m
   31     i9ans1=i9ans1+1
   27     continue
          go to 32
   28     i9ans1=i9ans1+1
   29     i9ans1=i9ans1+2
   30     i9ans1=i9ans1+4
          if(m.lt.4)       go to (31,31,31,27),m
          go to 32
   32     i9comp=39
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23306
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23506
      write(6,31530)
      go to 23406
23306 if( i9keyc.eq.1 ) go to 23506
      write(6,31520)
23406 write(6,31600) i9data,i9ans1,i9comp
23506 i9ans1=0
c
          do 33 i=3,4
          do 33 j=11,12,2
          m=i+j
          if(m.gt.13)   if(m-15)  34,34,35
   36     i9ans1=i9ans1+m
   33     i9ans1=i9ans1+1
          go to 35
   34     i9ans1=i9ans1*2
          if(i9ans1.ge.0) if(i9ans1)  35,36,36
   35     i9comp=46
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23307
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23507
      write(6,31530)
      go to 23407
23307 if( i9keyc.eq.1 ) go to 23507
      write(6,31520)
23407 write(6,31600) i9data,i9ans1,i9comp
23507 i9ans1=0
c
          go to 37
   38     i9ans1=i9ans1+1
          go to (40,39),m
   37     m=0
          do 39 i=2,3
          m=m+1
          do 40 j=1,2
          go to 38
   40     i9ans1=i9ans1+2
   39     i9ans1=i9ans1+6
          i9comp=19
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23308
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23508
      write(6,31530)
      go to 23408
23308 if( i9keyc.eq.1 ) go to 23508
      write(6,31520)
23408 write(6,31600) i9data,i9ans1,i9comp
23508 i9ans1=0
c
          assign 41 to m
          go to 42
   41     i9ans1=i9ans1+1
          if(i9ans1)  43,43,45
   42     do 44 i=5,7,2
          do 45 j=1,1
          go to m,(43,41)
   45     i9ans1=i9ans1+1
   44     continue
   43     i9comp=4
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23309
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23509
      write(6,31530)
      go to 23409
23309 if( i9keyc.eq.1 ) go to 23509
      write(6,31520)
23409 write(6,31600) i9data,i9ans1,i9comp
23509 i9ans1=0
c
          do 46 i=1,2
          do 47 j=97,98
          i9ans1=i9ans1+1
   47     continue
          go to (50,49),i
   46     i9ans1=i9ans1*2
          go to 48
   49     i9ans1=i9ans1+2
   50     i9ans1=i9ans1+4
          if(i9ans1.gt.5)  go to 46
   48     i9comp=40
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23310
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23510
      write(6,31530)
      go to 23410
23310 if( i9keyc.eq.1 ) go to 23510
      write(6,31520)
23410 write(6,31600) i9data,i9ans1,i9comp
23510 i9ans1=0
c
          assign 53 to m
          do 52 i=4,5
          do 53 j=61,64,3
          i9ans1=i9ans1+1
          if(i9ans1)  54,54,55
   53     continue
   52     continue
          go to 54
   55     i9ans1=i9ans1+1
          if(i9ans1.ge.2)  go to m,(53,54)
   54     i9comp=8
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23311
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23511
      write(6,31530)
      go to 23411
23311 if( i9keyc.eq.1 ) go to 23511
      write(6,31520)
23411 write(6,31600) i9data,i9ans1,i9comp
23511 i9ans1=0
c
          m=0
          go to 56
   57     i9ans1=i9ans1+1
          if(m.lt.2)  go to (61,58,58),m
          go to 58
   56     do 59 i=96,98,3
          m=m+1
          do 60 j=3,8,4
          i9ans1=i9ans1+1
          if(m.gt.0)  go to 57
   61     i9ans1=i9ans1+1
   60     continue
   59     continue
   58     i9comp=6
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23312
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23512
      write(6,31530)
      go to 23412
23312 if( i9keyc.eq.1 ) go to 23512
      write(6,31520)
23412 write(6,31600) i9data,i9ans1,i9comp
23512 i9ans1=0
c
          assign  64  to m
          go to 63
   64     i9ans1=i9ans1*2
          if(.true.)  if(i9ans1)  65,65,66
          go to 65
   63     do 67 i=1,2
          do 68 j=3,3,3
          i9ans1=i9ans1+1
          go to  m,(66,64)
   66     i9ans1=i9ans1+2
   68     continue
   67     continue
   65     i9comp=12
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23313
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23513
      write(6,31530)
      go to 23413
23313 if( i9keyc.eq.1 ) go to 23513
      write(6,31520)
23413 write(6,31600) i9data,i9ans1,i9comp
23513 i9ans1=0
c
          m=0
          do 71 i=3,4
          m=m+1
          do 72 j=1,2,1
          if(j.lt.3)  go to (73,74),m
   76     i9ans1=i9ans1+1
   72     continue
   71     i9ans1=i9ans1+2
          go to 75
   73     i9ans1=i9ans1+3
   74     i9ans1=i9ans1+4
          go to 76
   75     i9comp=30
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23314
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23514
      write(6,31530)
      go to 23414
23314 if( i9keyc.eq.1 ) go to 23514
      write(6,31520)
23414 write(6,31600) i9data,i9ans1,i9comp
23514 i9ans1=0
      if(i9keyc.eq.1) go to 25900
      write(6,31570)
25900 continue
c
          assign 81 to m
          do  82 i=1,1,1
          do  83 j=2,5
          if(i.lt.2)  if(i)  84,84,85
   81     i9ans1=i9ans1+1
   83     continue
   82     continue
          go to 84
   85     i9ans1=i9ans1*2
          go to m,(84,81)
   84     i9comp=15
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23315
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23515
      write(6,31530)
      go to 23415
23315 if( i9keyc.eq.1 ) go to 23515
      write(6,31520)
23415 write(6,31600) i9data,i9ans1,i9comp
23515 i9ans1=0
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
