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
      integer    faab01,faab02,faab03,faab04
      integer       i11,i12,i13,i14,
     1              i1dim1(1),i1dim2(1),i1dim4(1),
     2              i2dim1(1,2),i2dim2(2,1),i2dim6(2,2),i2dim7(1,2),
     3              i2dim3(1,2,1,2),i2dim4(1,3,2,1)
c
      integer       i1dim3,i2dim5
      dimension     i1dim3(1),i2dim5(1,1)
c
      data          i1dim3/1/,i2dim5/1/
c
      integer       i1dim5(4),i1dim7(1),i1dim8(3)
c
      real          r11,r12,r13,
     1              r1dim1(1),r1dim2(1),
     2              r1dim4(1),r1dim5(2),
     3              r2dim1(1,2),r2dim2(2,1),r2dim3(2,2)
c
c
      common        i1dim4
      common        i12,r12,r1dim4
c
      common  /label/    i1dim7,i1dim8
c
      common  /name/     i13,r13,r14,r1dim5
c
c
      equivalence( i1dim1(1),i1dim2(1) )
      equivalence( idumy,i1dim3(1) )
      equivalence( r1dim1(1),r1dim2(1) )
      equivalence( i2dim1(1,1),i2dim2(1,1) )
      equivalence( i2dim5(1,1),i2dim6(1,1) )
      equivalence( r2dim1(1,1),r2dim2(1,1) )
      data     i1dim1/-1/,i14/1/,r1dim1/0.0/,i2dim1(1,1)/0/
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
          i12       = 0
          if( i12 )                     15,10,15
   10     i9ans1    = 1
   15 i9data = i9data + 1
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
          read(5,20)    i12
   20     format(i5)
          if( i12 )                     30,30,25
   25     i9ans1    = 1
   30 i9data = i9data + 1
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
          if( i13 )                     35,40,40
   35     i9ans1    = 1
   40 i9data = i9data + 1
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
          i13      = 1
          if( i13 )                     45,45,43
   43     i9ans1   = 1
   45 i9data = i9data + 1
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
          if(i1dim2(1))                 50,55,55
   50     i9ans1   = 1
   55 i9data = i9data + 1
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
          if( idumy )         65,65,60
   60     i9ans1   = 1
   65 i9data = i9data + 1
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
          do  70  i=i14,7
          if ( i )            80,80,75
   70     continue
   75     i9ans1   = 1
   80 i9data = i9data + 1
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
          i9ans1=faab01(i11)
   90 i9data = i9data + 1
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
          read(5,95)   r12
   95     format( f10.5 )
          if( r12 )                     100,105,105
  100     i9ans1   = 1
  105 i9data = i9data + 1
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
          if( r13 )                     115,110,115
  110     i9ans1   = 1
  115 i9data = i9data + 1
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
          r13      = 77221.0
          if( r13 )           125,125,120
  120     i9ans1   = 1
  125 i9data = i9data + 1
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
          read(5,130)         r14
  130     format( f10.0 )
          if( r14 )           135,140,140
  135     i9ans1   = 1
  140 i9data = i9data + 1
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
          if( r1dim2(1) )               150,145,150
  145     i9ans1   = 1
  150 i9data = i9data + 1
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
          r1dim1(1)= -1.0
          if( r1dim2(1) )               155,160,160
  155     i9ans1   = 1
  160 i9data = i9data + 1
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
          i9ans1=faab02(r11)
  170 i9data = i9data + 1
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
          i1dim4(1) = -1
          if( i1dim4(1) )               175,180,180
  175     i9ans1   = 1
  180 i9data = i9data + 1
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
          i        = 2
          if(i1dim8(i))    190,190,185
  185     i9ans1   = 1
  190 i9data = i9data + 1
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
          i        = 1
          i1dim8(1)= -1
          if( i1dim8(1*i) )             195,200,200
  195     i9ans1   = 1
  200 i9data = i9data + 1
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
          k1       = 1
          k2       = -1
          if( i2dim1(k2+2,k1) )    205,201,205
  201     i9ans1 = 1
  205 i9data = i9data + 1
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
          k1       = 1
          k2       = 2
          if( i2dim5( k2-1,k1 ) )       215,215,210
  210     i9ans1   = 1
  215 i9data = i9data + 1
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
          i2dim3(1,2,1,2)    = 1815
          k       = 2
          i9ans1=faab03(i2dim3,k)
  225 i9data = i9data + 1
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
      i1dim4(1)    = 1
      call  saab01( i1dim4,1,ks )
          go to (230,235),ks
  230     i9ans1   =  1
  235 i9data = i9data + 1
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
          read(5,240)    r1dim4(1)
  240     format( f10.0 )
          k        =  1
          if( r1dim4(2*k-1) )           250,250,245
  245     i9ans1   =  1
  250 i9data = i9data + 1
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
          k        = 2
          if( r1dim5( k-1 ) )           260,255,260
  255     i9ans1   = 1
  260 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23023
      if(i9keyc.eq.1) go to 23123
      write(6,31510) i9data
      go to 23123
23023 if(i9keyc.eq.1) go to 23223
      write(6,31500) i9data
      go to 23223
23123 i9errc = i9errc + 1
23223 i9ans1=0
c
          r1dim5(2) = -1
          k         = 1
          if( r1dim5( 2*k ) )           265,270,270
  265     i9ans1   =  1
  270 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23024
      if(i9keyc.eq.1) go to 23124
      write(6,31510) i9data
      go to 23124
23024 if(i9keyc.eq.1) go to 23224
      write(6,31500) i9data
      go to 23224
23124 i9errc = i9errc + 1
23224 i9ans1=0
c
          k        = 1
          read(5,275)    r1dim5(2)
  275     format( f10.0 )
          if( r1dim5( k+1 ) )           285,285,280
  280     i9ans1   =  1
  285 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23025
      if(i9keyc.eq.1) go to 23125
      write(6,31510) i9data
      go to 23125
23025 if(i9keyc.eq.1) go to 23225
      write(6,31500) i9data
      go to 23225
23125 i9errc = i9errc + 1
23225 i9ans1=0
c
          k1       =  1
          k2       =  2
          k3       =  0
          read(5,290)   r2dim1(1,2)
  290     format( f10.0 )
          if( r2dim1( k3+1,1*k1+1 ) )   300,295,300
  295     i9ans1   = 1
  300 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23026
      if(i9keyc.eq.1) go to 23126
      write(6,31510) i9data
      go to 23126
23026 if(i9keyc.eq.1) go to 23226
      write(6,31500) i9data
      go to 23226
23126 i9errc = i9errc + 1
23226 i9ans1=0
c
          r2dim2(1,1) = -1
          if( r2dim2( k2-1, 1*k2-1 ) )  305,310,310
  305     i9ans1   =  1
  310 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23027
      if(i9keyc.eq.1) go to 23127
      write(6,31510) i9data
      go to 23127
23027 if(i9keyc.eq.1) go to 23227
      write(6,31500) i9data
      go to 23227
23127 i9errc = i9errc + 1
23227 i9ans1=0
c
          r2dim3(1,1) = 11815.0
          i9ans1=faab04(r2dim3,k1)
  325 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23028
      if(i9keyc.eq.1) go to 23128
      write(6,31510) i9data
      go to 23128
23028 if(i9keyc.eq.1) go to 23228
      write(6,31500) i9data
      go to 23228
23128 i9errc = i9errc + 1
23228 i9ans1=0
c
          k1       = 1
          k2       = 2
          read(5,330)    r2dim3(1,1)
  330     format( f10.0)
      call  sabb01( r2dim3,1,ks )
          go to ( 335,340 ),ks
  335     i9ans1   = 1
  340 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23029
      if(i9keyc.eq.1) go to 23129
      write(6,31510) i9data
      go to 23129
23029 if(i9keyc.eq.1) go to 23229
      write(6,31500) i9data
      go to 23229
23129 i9errc = i9errc + 1
23229 i9ans1=0
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
      block  data
      dimension     i1dim7(1),i1dim8(3),r1dim5(2)
      common        /label/   i1dim7,i1dim8  /name/ i13,r13,r14,r1dim5
      data          i13/-1/,r13/0.0/,i1dim8/0,1234,-4/,r1dim5/0.0,1.1/
      end

      subroutine sabb01(r2dim3,n,ks)
      dimension     r2dim3(n,n)
      ks           = 1
      k1           = 1
      k2           = 2
      if( r2dim3(1*k1,k2-1) )           340,335,335
  335     ks       = 2
  340     return
          end

      subroutine saab01(i1dim4,n,ks)
      dimension     i1dim4(n)
          ks       = 1
          k        = 0
          if( i1dim4(1*k+1) )           10,10,15
   10     ks       = 2
   15     return
          end

      integer  function  faab01 (i)
      i = 1182
      faab01 = 1
      if ( i )      10,10,20
   10 faab01 = 0
   20 return
      end

      integer  function  faab02  (r)
      r = -1.234121e0
      faab02 = 1
      if( r )   20,10,10
   10 faab02 = 0
   20 return
      end

      integer  function   faab03(i2,k)
      dimension  i2(1,2,1,2)
      faab03=1
      if(i2(1,k,1,k))   10,10,20
   10 faab03=0
   20 return
      end

      integer  function  faab04 (r2,k1)
      dimension  r2(2,2)
      faab04 = 1
      if( r2(1,k1) )    10,10,20
   10 faab04 = 0
   20 return
      end
