      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
      real       r9ans1,r9comp,r9dif1,r9dif2,r9dif3
          dimension   r1dim1(100),r1dim2(100)

          r1dim1(1)=3462.62
          r1dim1(2)=1391.98
          r1dim1(3)=7621.12
          r1dim1(4)=3241.98
          r1dim1(5)=3232.15
          r1dim1(6)=9278.62
          r1dim1(7)=3362.92
          r1dim1(8)=4532.31
          r1dim1(9)=2423.68
          r1dim1(10)=1392.33
          r1dim1(11)=1256.42
          r1dim1(12)=0
          r1dim2(12)=0
          r1dim1(13)=0
          r1dim2(13)=0
          do 12301 i12301=14,100
            r1dim1(i12301)=r1dim1(i12301-1)
12301       r1dim2(i12301)=r1dim2(i12301-1)
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
c
          rewind 12
          i9ans1=1
      i9data = i9data + 1
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
          write(12)     r1dim1(1),r1dim1(2)
          rewind 12
          read(12) r9ans1,r1dim2(2)
          r9comp=3462.62
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23650
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23600 if(r9dif3 - 5.0e-6)                23700,23700,23750
23650 r9dif3 = abs(r9ans1)
      go to 23600
23700 if( i9keyc.eq.1) go to 23850
      write(6,31520)
      go to 23800
23750 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23850
      write(6,31530)
23800 write(6,31610) i9data,r9ans1,r9comp,r9dif3
23850 r9ans1 = 0.0e00
          rewind 12
c
          do 31 i=1,100
          write(12) i,r1dim1(i)
   31     continue
          rewind 12
          do 32 i=1,100
          read(12,end=33,err=33)  n,r1dim2(i)
          if (i.ne.n) go to 36
          if (r1dim1(i).eq.r1dim2(i)) go to 32
          r9ans1=r1dim1(i)
          r9comp=r1dim2(i)
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23651
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23601 if(r9dif3 - 5.0e-6)                23701,23701,23751
23651 r9dif3 = abs(r9ans1)
      go to 23601
23701 if( i9keyc.eq.1) go to 23851
      write(6,31520)
      go to 23801
23751 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23851
      write(6,31530)
23801 write(6,31610) i9data,r9ans1,r9comp,r9dif3
23851 r9ans1 = 0.0e00
          go to 37
   32     continue
          read(12,end=34,err=33) n,r1dim2(1)
   33     i9ans1=0
          go to 35
   34     i9ans1=1
   35     continue
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
          go to 37
   36 i9data = i9data + 1
      if (iabs(i-n).eq.0) go to 23300
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23500
      write(6,31530)
      go to 23400
23300 if( i9keyc.eq.1 ) go to 23500
      write(6,31520)
23400 write(6,31600) i9data,i,n
23500 i9ans1=0
   37     continue
          rewind 12
c
          read(12) i9ans1,r1dim2(1)
          rewind 12
          read(12) i9comp,r1dim2(2)
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
          rewind 12
c
          do 50 i=1,20
          write(12) i,r1dim1(i)
   50     continue
          endfile 12
          rewind 12
          do 51 i=1,5
          read(12) n,r1dim2(i)
   51     continue
          rewind 12
          read(12) i9ans1,r1dim2(1)
          i9comp=1
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
          rewind 12
c
   61     read(12,end=62,err=62) n,r1dim2(1)
          go to 61
   62     rewind 12
          read(12)  i9ans1,r1dim2(1)
          i9comp=1
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
          rewind 12
c
          write(12) (r1dim1(i),i=1,5)
          backspace 12
          read(12,end=72,err=72) (r1dim2(i),i=1,5)
          do 71 i=1,5
          if (r1dim1(i).ne.r1dim2(i)) go to 75
   71     continue
          read(12,end=73,err=72) (r1dim2(i),i=1,5)
   72     i9ans1=0
          go to 74
   73     i9ans1=1
   74     continue
          go to 76
   75 i9data = i9data + 1
      if( abs(r1dim2(i)) .eq. 0.0e00 ) go to 23652
      r9dif3 = abs(( r1dim1(i) - r1dim2(i) )/r1dim2(i))
23602 if(r9dif3 - 5.0e-6)                23702,23702,23752
23652 r9dif3 = abs(r1dim1(i))
      go to 23602
23702 if( i9keyc.eq.1) go to 23852
      write(6,31520)
      go to 23802
23752 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23852
      write(6,31530)
23802 write(6,31610) i9data,r1dim1(i),r1dim2(i),r9dif3
23852 r9ans1 = 0.0e00
   76     continue
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
          rewind 12
c
          write(12)  r1dim1(7),r1dim1(8)
          write(12)  r1dim1(9),r1dim1(10)
          do 81 i=1,3
          backspace 12
   81     continue
          read(12,end=82,err=82) r1dim2(1),r1dim2(2)
          r9comp=r1dim1(7)
          r9ans1=r1dim2(1)
          if (r1dim1(7).ne.r1dim2(1)) go to 85
          read(12,end=82,err=82) r1dim2(1),r1dim2(2)
          r9comp=r1dim1(9)
          r9ans1=r1dim2(1)
          if (r1dim1(9).ne.r1dim2(1)) go to 85
          read(12,end=83,err=82) r1dim2(5),r1dim2(6)
   82     i9ans1=0
          go to 84
   83     i9ans1=1
   84     continue
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
          go to 86
   85 i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23653
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23603 if(r9dif3 - 5.0e-6)                23703,23703,23753
23653 r9dif3 = abs(r9ans1)
      go to 23603
23703 if( i9keyc.eq.1) go to 23853
      write(6,31520)
      go to 23803
23753 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23853
      write(6,31530)
23803 write(6,31610) i9data,r9ans1,r9comp,r9dif3
23853 r9ans1 = 0.0e00
   86     continue
          rewind 12
c
          do 91 i=1,20
          write(12) i,r1dim1(i)
   91     continue
          do 92 i=1,5
          backspace 12
   92     continue
          do 93 i=16,20
          read(12,end=94,err=94) n,r1dim2(i)
          if (n.ne.i) go to 97
   93     continue
          read(12,end=95,err=94) n,r1dim2(i)
   94     i9ans1=0
          go to 96
   95     i9ans1=1
   96     continue
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
          go to 98
   97 i9data = i9data + 1
      if (iabs(n-i).eq.0) go to 23304
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23504
      write(6,31530)
      go to 23404
23304 if( i9keyc.eq.1 ) go to 23504
      write(6,31520)
23404 write(6,31600) i9data,n,i
23504 i9ans1=0
   98     continue
          rewind 12
c
          do 101 i=1,5
          write(12)  i,(r1dim1(n),n=1,20)
  101     continue
          backspace 12
          read(12,end=102,err=102) m,(r1dim2(n),n=1,20)
          n=5
          if (n.ne.m) go to 105
          read(12,end=103,err=102) m,(r1dim2(n),n=1,20)
  102     i9ans1=0
          go to 104
  103     i9ans1=1
  104     continue
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23005
      if(i9keyc.eq.1) go to 23105
      write(6,31510) i9data
      go to 23105
23005 if(i9keyc.eq.1) go to 23205
      write(6,31500) i9data
      go to 23205
23105 i9errc = i9errc + 1
23205 i9ans1=0
          go to 106
  105 i9data = i9data + 1
      if (iabs(n-m).eq.0) go to 23305
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23505
      write(6,31530)
      go to 23405
23305 if( i9keyc.eq.1 ) go to 23505
      write(6,31520)
23405 write(6,31600) i9data,n,m
23505 i9ans1=0
  106     continue
          rewind 12
c
          backspace 12
          i9ans1=1
      i9data = i9data + 1
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
          do 120 i=1,10
          write(12) i,r1dim1(i)
  120     continue
          endfile 12
          rewind 12
          read(12) i9ans1,r1dim2(1)
          backspace 12
          read(12) i9comp,r1dim2(1)
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
          rewind 12
c
          do 131 i=1,5
          read(12) n,r1dim2(i)
  131     continue
          do 132 i=1,4
          backspace 12
  132     continue
          read(12)  i9ans1,r1dim2(3)
          i9comp=2
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
          rewind 12
c
          do 141 i=1,10
          read(12) n,r1dim2(i)
  141     continue
          do 142 i=1,10
          backspace 12
  142     continue
          read(12)  i9ans1,r1dim2(1)
          i9comp=1
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
          rewind 12
c
          write(12) r1dim1(5),r1dim1(6)
          endfile 12
          rewind 12
          read(12,end=151,err=151) r1dim2(3),r1dim2(4)
          read(12,end=152,err=151) r1dim2(3),r1dim2(4)
  151     i9ans1=0
          go to 153
  152     i9ans1=1
  153     continue
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
          rewind 12
      if(i9keyc.eq.1) go to 25900
      write(6,31570)
25900 continue
c
          read(12) r1dim2(5),r1dim2(6)
          endfile 12
          i9ans1=1
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
          rewind 12
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
