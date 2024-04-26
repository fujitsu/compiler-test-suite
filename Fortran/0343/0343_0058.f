      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
      integer       udeb1 , udeb2 , udeb3 , udeb4 , udeb5
      integer       udeb6 , udeb7 , udeb8 , udeb9 , udeb10
      integer       i1mon1,i1mon2,i1mon3,i1val1,i1val2,i1val3,i2tab1(2)
      real          r1mon1,r1mon2,r1mon3,r1val1,r1val2,r1val3,r2tab1(2)
c
      data          i1val1,i1val2,i1val3,i2tab1/1,2,3,1,2/
      data          r1val1,r1val2,r1val3,r2tab1/1.e0,2.e0,3.e0,1.e0,
     1                                                           2.e0/
c
      udeb1  ( i1mon1 ) = i1mon1-144213
      udeb2  ( i1mon1,i1mon2 ) = i1mon1-11+3*i1mon2-i1mon2**2/i1mon1
      udeb3  ( i1mon1 ) = i1mon1+i1val2*5
      udeb4  ( i1mon1,i1mon2,i1mon3,i1mon4 ) = i1mon1+(i1mon1+13)*i1mon2
     1       -i1val1**2/i1mon3+(i1val2-i1mon4)*5
c
      udeb5  ( r1mon1,r1mon2 ) = r1mon2**r1mon1+r1mon1-r1mon1/r1mon2
      udeb6  ( r1mon1,r1mon2 ) = 125.e0-r1mon1+r1mon2*r1mon1*2.e0
     1                                  +r1mon1+5.e0*r1mon2-r1mon2
      udeb7  ( r1mon1 ) = r1val2*r1mon1/1.e0**r1val1-300.e0-r1mon1
      udeb8  ( r1mon1,r1mon2,r1mon3 ) = r1mon1+2.e0-r1mon2-1.e0-r1mon3
     1   +2.e0*r1val1*r1mon2+r1val3/3.e0-1.e0-3.e0+r1mon1*1.e0/r1val1
c
      udeb9  ( i1mon1 ) = 2*i1mon1+i1val2
      udeb10 ( r1mon1 ) = 1000.e0*r1mon1+r1val1
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
c
      i9ans1 = udeb1 ( i1val1 )
      i9comp = -144212
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
      i9ans1 = udeb2 ( 100,5*i1val2 )
      i9comp = 118
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
      i9ans1 = udeb3 ( 775989-i1val1 )
      i9comp = 775998
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
      i9ans1 = udeb4 ( 7,i1val3/i1val2,i1val1,i1val2 )
      i9comp = 26
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
      i9ans1 = udeb5 ( r1val1,r1val2 )
      i9comp = 2
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
      i9ans1 = udeb6 ( r1val1*1.e0,2.e0 )
      i9comp = 137
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
      i9ans1 = udeb7(100.+50.e0*r1val3)-0.5
          i9comp = -50
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
      i9ans1 = udeb8(2.0-i1val1,i1val3-1.0,r1val3) -0.5
      i9comp = -1
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
      i1val2 = -225854
      i9ans1 = udeb9 ( 3/2+2 )
          i9comp    = -225848
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
      i9ans1 = udeb10 ( 2.e0*3+1.e0)
      i9comp = 7001
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
          i9ans1= udeb9( i2tab1(2) )
          i9comp  =  -225850
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
      i9ans1 = udeb10 ( r2tab1(1) )
      i9comp = 1001
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
      i9ans1 = udeb9 ( 7/i1val2-i2tab1(1)*i1val3 )
          i9comp    = -225860
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
      i9ans1 = udeb9 ( 2/i1val1-i2tab1(2)+3**i1val1+i2tab1(1)*2 )
          i9comp    = -225844
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
      i9ans1 = udeb10 ( r1val2+1.e0*r2tab1(2))
      i9comp = 4001
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
c
      i9ans1 = udeb10( 1.0e0+3.0e0+r1val3/9.0-r1val1*
     1              r1val2+r2tab1(1)/r2tab1(2)-5.e0)
          i9comp = -2165
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
