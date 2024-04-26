      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
      real       r9ans1,r9comp,r9dif1,r9dif2,r9dif3
      double precision   d9ans1,d9comp,d9dif1,d9dif2,d9dif3
      complex    c9ans1,c9comp,c9df9
      real       r9dif5,r9dif6,r9dif7,r9dif8,r9dif9,r9df10,r9df11
      real       r9dim1(2),r9dim2(2),r9df99(2)
      equivalence        (c9ans1,r9dim1(1)),(c9comp,r9dim2(1)),
     *                   (c9df9,r9df99(1))
      logical    l9ans1,l9comp
      equivalence     (l9eans,l9ans1),(l9ecom,l9comp)
          logical   l1val1,l1val2,l1tab1(1),x8,x9,ufub8,funb8,ffub81
c
          ufub8(x8,x9) = x8.or.x9
c
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
31610 format(1h+,9x,1h(, i3, 2h ),21x,e15.8,21x,e15.8,30x,e15.8 )
31620 format(1h+,9x,1h(, i3,2h ),12x,d24.17,12x,d24.17,21x,d24.17 )
31640 format(1h+,9x,1h(,i3,2h ),21x,e15.8,21x,e15.8,30x,e15.8 /
     *      37x,e15.8,21x,e15.8,30x,e15.8 )
31650 format(1h ,36x,e15.8,21x,e15.8,30x,e15.8 )
31700 format(1h+,9x,1h( ,i3,2h ),33x,l3,33x,l3 )
c
          i9ans1 = 0
          if(.not..true.)               go to 10
          i9ans1 = 1
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
          l1val1 = .false.
          if(.not.l1val1)               i9ans1=1
      i9data = i9data + 1
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
          i1val1 = 1111
          i1val2 = 2222
          if(.not.i1val1.eq.i1val2)     i9ans1=1
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
          l1val1 = .false.
          if(.true..and..not.l1val1)    i9ans1=1
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
          r1val1 = 312.8
          r1val2 = 312.8
          l1tab1(1) = .false.
          if(r1val1.eq.r1val2.and.l1tab1(1))    go to 15
          i9ans1 = 1
   15 i9data = i9data + 1
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
          i1val1 = 2
          i1val2 = 1
          l1val1 = .true.
          if(.not.i1val1.ge.i1val2.and.funb8(l1val1))   go to 20
          i9ans1 = 1
   20 i9data = i9data + 1
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
          l1val1 = .false.
          l1val2 = .false.
          r1val1 = 3.2
          if(ufub8(l1val1,l1val2).and.r1val1.le.3.1)   go to 25
          i9ans1 = 1
   25 i9data = i9data + 1
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
          l1tab1(1) = .true.
          l1val1 = .false.
          if(l1tab1(1).or.funb8(l1val1)) i9ans1=1
      i9data = i9data + 1
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
          i1val1 = 1
          i1val2 = 2
          i1val3 = 3
          if(i1val3.eq.i1val1+i1val2.or.i1val1.lt.i1val2) i9ans1=1
      i9data = i9data + 1
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
          l1tab1(1) = .true.
          if(l1tab1(1).or..false.)      i9ans1=1
      i9data = i9data + 1
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
          r1val1 = 3.
          r1val2 = 1414.14
          i1val1 = 3414
          l1val2 = .false.
          if( 2.0.ne.-(r1val1-r1val2).or.ufub8(l1val1,l1val2)
     1      .and.l1val2)                i9ans1=1
      i9data = i9data + 1
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
          l1tab1(1) = .false.
          l1val1 = .true.
          if(l1tab1(1).or.l1val1)       i9ans1=1
      i9data = i9data + 1
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
          l1val1 = .false.
          i1val1 = 1
          if((.false..or.l1val1).or..not.i1val1.gt.2 ) i9ans1=1
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23012
      if(i9keyc.eq.1) go to 23112
      write(6,31510) i9data
      go to 23112
23012 if(i9keyc.eq.1) go to 23212
      write(6,31500) i9data
      go to 23212
23112 i9errc = i9errc + 1
23212 i9ans1=0
c
          l1tab1(1) = .false.
          l1val1 = .false.
          if(l1tab1(1).or.ufub8(l1tab1(1),l1val1))   go to 30
          i9ans1 = 1
   30 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23013
      if(i9keyc.eq.1) go to 23113
      write(6,31510) i9data
      go to 23113
23013 if(i9keyc.eq.1) go to 23213
      write(6,31500) i9data
      go to 23213
23113 i9errc = i9errc + 1
23213 i9ans1=0
c
          l1val1 = .true.
          r1val1 = 1.5
          if(.not.l1val1.and.1.6.ge.r1val1.or.(l1val1.neqv..true.)
     1      .and..true.)                go to 35
          i9ans1 = 1
   35 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23014
      if(i9keyc.eq.1) go to 23114
      write(6,31510) i9data
      go to 23114
23014 if(i9keyc.eq.1) go to 23214
      write(6,31500) i9data
      go to 23214
23114 i9errc = i9errc + 1
23214 i9ans1=0
      if(i9keyc.eq.1) go to 25900
      write(6,31570)
25900 continue
c
          l1val1 = .true.
          l1tab1(1) = .true.
          if(l1val1.neqv.l1tab1(1))      go to 40
          i9ans1 = 1
   40 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23015
      if(i9keyc.eq.1) go to 23115
      write(6,31510) i9data
      go to 23115
23015 if(i9keyc.eq.1) go to 23215
      write(6,31500) i9data
      go to 23215
23115 i9errc = i9errc + 1
23215 i9ans1=0
c
          l1tab1(1) = .false.
          if(.true..neqv.l1tab1(1))      i9ans1=1
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23016
      if(i9keyc.eq.1) go to 23116
      write(6,31510) i9data
      go to 23116
23016 if(i9keyc.eq.1) go to 23216
      write(6,31500) i9data
      go to 23216
23116 i9errc = i9errc + 1
23216 i9ans1=0
c
          l1val1 = .false.
          l1val2 = .false.
          l1tab1(1) = .true.
          if(ufub8(l1val1,l1val2).neqv.l1tab1(1))  i9ans1=1
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23017
      if(i9keyc.eq.1) go to 23117
      write(6,31510) i9data
      go to 23117
23017 if(i9keyc.eq.1) go to 23217
      write(6,31500) i9data
      go to 23217
23117 i9errc = i9errc + 1
23217 i9ans1=0
c
          l1tab1(1) = .false.
          if(ffub81(l1tab1(1)).neqv.l1tab1(1))   go to 45
          i9ans1 = 1
   45 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23018
      if(i9keyc.eq.1) go to 23118
      write(6,31510) i9data
      go to 23118
23018 if(i9keyc.eq.1) go to 23218
      write(6,31500) i9data
      go to 23218
23118 i9errc = i9errc + 1
23218 i9ans1=0
c
          r1val1 = -3.
          r1val2 = 3.
          l1val1 = .false.
          l1val2 = .true.
          if(-r1val1.eq.r1val2.and..true..neqv.ufub8(l1val1,l1val2)
     1      .and..not.l1val1)           go to 50
          i9ans1 = 1
   50 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23019
      if(i9keyc.eq.1) go to 23119
      write(6,31510) i9data
      go to 23119
23019 if(i9keyc.eq.1) go to 23219
      write(6,31500) i9data
      go to 23219
23119 i9errc = i9errc + 1
23219 i9ans1=0
c
          l1tab1(1) = .false.
          l1val1 = .true.
          i1val1 = -3
          if((l1tab1(1).or.l1val1).neqv.-2.le.i1val1) i9ans1=1
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23020
      if(i9keyc.eq.1) go to 23120
      write(6,31510) i9data
      go to 23120
23020 if(i9keyc.eq.1) go to 23220
      write(6,31500) i9data
      go to 23220
23120 i9errc = i9errc + 1
23220 i9ans1=0
c
          i1val1 = 1
          i1val2 = 2
          l1val1 = .true.
          if(.not.i1val1.ne.i1val2.neqv.(.false..neqv.l1val1)) i9ans1=1
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23021
      if(i9keyc.eq.1) go to 23121
      write(6,31510) i9data
      go to 23121
23021 if(i9keyc.eq.1) go to 23221
      write(6,31500) i9data
      go to 23221
23121 i9errc = i9errc + 1
23221 i9ans1=0
c
          i1val1 = 1
          r1val1 = 2.
          if(i1val1.ge.1.and.1.lt.i1val1.neqv.5.0.gt.2.+r1val1
     1      .and.r1val1.eq.3.0)         go to 55
          i9ans1 = 1
   55 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23022
      if(i9keyc.eq.1) go to 23122
      write(6,31510) i9data
      go to 23122
23022 if(i9keyc.eq.1) go to 23222
      write(6,31500) i9data
      go to 23222
23122 i9errc = i9errc + 1
23222 i9ans1=0
c
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end

      logical  function  ffub81 (lx)
      logical   lx,l1val9
         data            l1val9/.false./
          ffub81 = lx.and.l1val9
          return
      end

      logical  function  funb8 (x8)
      logical    x8,lx
         data            lx/.true./
          funb8 = x8.or.lx
          return
      end
