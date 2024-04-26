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
          common /test/rval4,rval8,rval12,rval15,cval5,cval9,
     1                 ival1,rval2,lval3,rval7,ival6,
     2                 ival10,rval11,ival13,
     3                 rval14
          integer   ival1,ival6(10),ival10,ival13(10)
          real      rval2,rval7(10),rval11,rval14(10)
          double precision    rval4,rval8(10),rval12,rval15(10)
          complex   cval5,cval9(10)
          logical   lval3
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
31720 format(1h+,9x,1h(,i3,2h ),20x,a16,20x,a16)
c
          i9comp=1234
          i9ans1=ival1
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
          r9comp=2.3456e7
          r9ans1=rval2
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
c
          l9comp=.false.
          l9ans1=lval3
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2560
     *0
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25800
      write(6,31530)
      go to 25700
25600 if(i9keyc.eq.1) go to 25800
      write(6,31520)
25700 write(6,31700) i9data,l9ans1,l9comp
25800 continue
c
          d9comp=3.45678d9
          d9ans1=rval4
      i9data = i9data + 1
      if( dabs( d9comp ) .eq. 0.0d00 ) go to 23950
      d9dif3 = dabs(( d9ans1-d9comp )/d9comp )
23900 if(d9dif3 - 5.0d-16)                24000,24000,24050
23950 d9dif3 = dabs(d9ans1)
      go to 23900
24000 if( i9keyc.eq.1 ) go to 24150
      write(6,31520)
      go to 24100
24050 i9errc = i9errc + 1
      if( i9keyc.eq.1 ) go to 24150
      write(6,31530)
24100 write(6,31620) i9data,d9ans1,d9comp,d9dif3
24150 d9ans1 = 0.0d00
c
          c9comp=(4.56e7,5.67e8)
          c9ans1=cval5
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24500 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24550
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-6) 24500,24500,24600
24550 if (abs(r9df99(lq))-5.0e-6) 24500,24600,24600
24500 continue
      if (i9keyc.eq.1) go to 24700
      write(6,31520)
      go to 24650
24600 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24700
      write(6,31530)
24650 write(6,31640) i9data,(r9dim1(lq),r9dim2(lq),r9df99(lq),lq=1,2)
24700 c9ans1=(0.0,0.0)
c
          i9comp=5678
          i9ans1=ival6(6)
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
          r9comp=6.789e1
          r9ans1=rval7(6)
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
c
          d9comp=7.890d2
          d9ans1=rval8(6)
      i9data = i9data + 1
      if( dabs( d9comp ) .eq. 0.0d00 ) go to 23951
      d9dif3 = dabs(( d9ans1-d9comp )/d9comp )
23901 if(d9dif3 - 5.0d-16)                24001,24001,24051
23951 d9dif3 = dabs(d9ans1)
      go to 23901
24001 if( i9keyc.eq.1 ) go to 24151
      write(6,31520)
      go to 24101
24051 i9errc = i9errc + 1
      if( i9keyc.eq.1 ) go to 24151
      write(6,31530)
24101 write(6,31620) i9data,d9ans1,d9comp,d9dif3
24151 d9ans1 = 0.0d00
c
          c9comp=(8.901e2,9.0123e4)
          c9ans1=cval9(6)
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24501 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24551
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-6) 24501,24501,24601
24551 if (abs(r9df99(lq))-5.0e-6) 24501,24601,24601
24501 continue
      if (i9keyc.eq.1) go to 24701
      write(6,31520)
      go to 24651
24601 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24701
      write(6,31530)
24651 write(6,31640) i9data,(r9dim1(lq),r9dim2(lq),r9df99(lq),lq=1,2)
24701 c9ans1=(0.0,0.0)
c
          read(5,210) i9comp
          i9ans1=ival10
  210     format(a3)
      i9data=i9data+1
      if( i9ans1 .eq. i9comp ) go to 26300
      i9errc=i9errc+1
      if (i9keyc.eq.1) go to 26400
      write(6,31530)
      go to 26350
26300 if (i9keyc.eq.1) go to 26400
      write(6,31520)
26350 write(6,31720)  i9data,i9ans1,i9comp
26400 continue
c
          read(5,211) r9comp
          r9ans1=rval11
  211     format(a3)
      i9data=i9data+1
      if( r9ans1 .eq. r9comp ) go to 26301
      i9errc=i9errc+1
      if (i9keyc.eq.1) go to 26401
      write(6,31530)
      go to 26351
26301 if (i9keyc.eq.1) go to 26401
      write(6,31520)
26351 write(6,31720)  i9data,r9ans1,r9comp
26401 continue
c
          read(5,212)  d9comp
          d9ans1=rval12
  212     format(a6)
      i9data=i9data+1
      if( d9ans1 .eq. d9comp ) go to 26302
      i9errc=i9errc+1
      if (i9keyc.eq.1) go to 26402
      write(6,31530)
      go to 26352
26302 if (i9keyc.eq.1) go to 26402
      write(6,31520)
26352 write(6,31720)  i9data,d9ans1,d9comp
26402 continue
c
          read(5,213)  i9comp
          i9ans1=ival13(6)
  213     format(a3)
      i9data=i9data+1
      if( i9ans1 .eq. i9comp ) go to 26303
      i9errc=i9errc+1
      if (i9keyc.eq.1) go to 26403
      write(6,31530)
      go to 26353
26303 if (i9keyc.eq.1) go to 26403
      write(6,31520)
26353 write(6,31720)  i9data,i9ans1,i9comp
26403 continue
c
          read(5,214)  r9comp
          r9ans1=rval14(6)
  214     format(a3)
      i9data=i9data+1
      if( r9ans1 .eq. r9comp ) go to 26304
      i9errc=i9errc+1
      if (i9keyc.eq.1) go to 26404
      write(6,31530)
      go to 26354
26304 if (i9keyc.eq.1) go to 26404
      write(6,31520)
26354 write(6,31720)  i9data,r9ans1,r9comp
26404 continue
c
          read(5,215) d9comp
          d9ans1=rval15(6)
  215     format(a3)
      i9data=i9data+1
      if( d9ans1 .eq. d9comp ) go to 26305
      i9errc=i9errc+1
      if (i9keyc.eq.1) go to 26405
      write(6,31530)
      go to 26355
26305 if (i9keyc.eq.1) go to 26405
      write(6,31520)
26355 write(6,31720)  i9data,d9ans1,d9comp
26405 continue
c
      if(i9keyc.eq.1) go to 25900
      write(6,31570)
25900 continue
c
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
c
          block data
          common /test/rval4,rval8,rval12,rval15,cval5,cval9,
     1                 ival1,rval2,lval3,rval7,ival6,
     2                 ival10,rval11,ival13,
     3                 rval14
          integer   ival1,ival6(10),ival10,ival13(10)
          real      rval2,rval7(10),rval11,rval14(10)
          double precision    rval4,rval8(10),rval12,rval15(10)
          complex   cval5,cval9(10)
          logical   lval3
          data      ival1/1234/
          data      rval2/2.3456e7/
          data      lval3/.false./
          data      rval4/3.45678d9/
          data      cval5/(4.56e7,5.67e8)/
          data      (ival6(i),i=1,10)/ 5*1,5678,4*1/
          data      (rval7(i),i=1,10)/ 5*1.0,6.789e1,4*1.0/
          data      (rval8(i),i=1,10)/ 5*1.0,7.890d2,4*1.0/
          data      (cval9(i),i=1,10)/ 5*(1.0,1.0),(8.901e2,9.0123e4),
     1                                   4*(1.0,1.0)/
          data      ival10/3habc/
          data      rval11/3hbcd/
          data      rval12/6hcdefgh/
          data      (ival13(i),i=1,10)/ 5*'a','abc',4*'a'/
          data      (rval14(i),i=1,10)/ 5*'a','bcd',4*'a'/
          data      (rval15(i),i=1,10)/ 5*'a','cde',4*'a'/
          end
