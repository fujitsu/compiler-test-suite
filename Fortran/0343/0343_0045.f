      integer    i9ans1,i9comp,lq,l9eans,l9ecom
      real       r9ans1,r9comp,r9dif3
      double precision   d9ans1,d9comp,d9dif3
      complex    c9ans1,c9comp,c9df9
      real       r9dim1(2),r9dim2(2),r9df99(2)
      equivalence        (c9ans1,r9dim1(1)),(c9comp,r9dim2(1)),
     *                   (c9df9,r9df99(1))
      logical    l9ans1,l9comp
      equivalence     (l9eans,l9ans1),(l9ecom,l9comp)
c
          dimension dt1(5),ct1(4)
          double precision  dv1,dt1
          complex   cv1,cv2,ct1
          logical   lv1,lv2
          common    dt1,ct1
          equivalence  (dt1(1),iv1),(dt1(2),rv1),(dt1(3),dv1)
     1                ,(dt1(4),cv1),(dt1(5),lv1),(ct1(1),iv2)
     2                ,(ct1(2),rv2),(ct1(3),cv2),(ct1(4),lv2)
c
          double precision  dv3,dt3
          complex   cv3,cv4,ct3
          logical   lv3,lv4
          equivalence (dt3(1),iv3),(dt3(2),rv3),(dt3(3),dv3)
     1               ,(dt3(4),cv3),(dt3(5),lv3),(ct3(1),iv4)
     2               ,(ct3(2),rv4),(ct3(4),lv4)
          equivalence (ct3(3),cv4)
          common       dt3,ct3
          dimension    dt3(5),ct3(4)
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
32000 continue
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
31660 format(1h+,9x,1h(,i3,2h ), 12x,d24.17,12x,d24.17,21x,d24.17 /
     *      28x,d24.17,12x,d24.17,21x,d24.17 )
31670 format(1h ,27x,d24.17,12x,d24.17,21x,d24.17 )
31700 format(1h+,9x,1h( ,i3,2h ),33x,l3,33x,l3 )
c
          iv1     = 1
          i9comp = 1
      i9data = i9data + 1
      if (iabs(iv1-i9comp).eq.0) go to 23300
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23500
      write(6,31530)
      go to 23400
23300 if( i9keyc.eq.1 ) go to 23500
      go to 23500
23400 write(6,31600) i9data,iv1,i9comp
23500 i9ans1=0
c
          rv1 = 242435.0
          r9comp = 242435.0
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23650
      r9dif3 = abs(( rv1 - r9comp )/r9comp)
23600 if(r9dif3 - 5.0e-6)                23700,23700,23750
23650 r9dif3 = abs(rv1)
      go to 23600
23700 if( i9keyc.eq.1) go to 23850
      go to 23850
23750 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23850
      write(6,31530)
23800 write(6,31610) i9data,rv1,r9comp,r9dif3
23850 r9ans1 = 0.0e00
c
          dv1 = 123456789.0d-5
          d9comp  = dt1(3)
      i9data = i9data + 1
      if( dabs( d9comp ) .eq. 0.0d00 ) go to 23950
      d9dif3 = dabs(( dv1-d9comp )/d9comp )
23900 if(d9dif3 - 5.0d-16)                24000,24000,24050
23950 d9dif3 = dabs(dv1)
      go to 23900
24000 if( i9keyc.eq.1 ) go to 24150
      go to 24150
24050 i9errc = i9errc + 1
      if( i9keyc.eq.1 ) go to 24150
      write(6,31530)
24100 write(6,31620) i9data,dv1,d9comp,d9dif3
24150 d9ans1 = 0.0d00
c
          cv1    = (4.,0.)
          c9ans1 = cv1
          c9comp = (4.,0.)
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24500 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24550
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-6) 24500,24500,24600
24550 if (abs(r9df99(lq))-5.0e-6) 24500,24600,24600
24500 continue
      if (i9keyc.eq.1) go to 24700
      go to 24700
24600 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24700
      write(6,31530)
24650 write(6,31640) i9data,(r9dim1(lq),r9dim2(lq),r9df99(lq),lq=1,2)
24700 c9ans1=(0.0,0.0)
c
          lv1    = .true.
          l9comp = .true.
      i9data = i9data + 1
      if((.not.lv1.and..not.l9comp).or.(lv1.and.l9comp))go to 25600
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25800
      write(6,31530)
      go to 25700
25600 if(i9keyc.eq.1) go to 25800
      go to 25800
25700 write(6,31700) i9data,lv1,l9comp
25800 continue
c
          iv2    = 6
          i9comp = 6
      i9data = i9data + 1
      if (iabs(iv2-i9comp).eq.0) go to 23301
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23501
      write(6,31530)
      go to 23401
23301 if( i9keyc.eq.1 ) go to 23501
      go to 23501
23401 write(6,31600) i9data,iv2,i9comp
23501 i9ans1=0
c
          rv2    = 7.
          r9comp = 7.
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23651
      r9dif3 = abs(( rv2 - r9comp )/r9comp)
23601 if(r9dif3 - 5.0e-6)                23701,23701,23751
23651 r9dif3 = abs(rv2)
      go to 23601
23701 if( i9keyc.eq.1) go to 23851
      go to 23851
23751 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23851
      write(6,31530)
23801 write(6,31610) i9data,rv2,r9comp,r9dif3
23851 r9ans1 = 0.0e00
c
          cv2 = (85062.0e-6,2256.0)
          c9ans1  = ct1(3)
          c9comp = (85062.0e-6,2256.0)
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24501 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24551
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-6) 24501,24501,24601
24551 if (abs(r9df99(lq))-5.0e-6) 24501,24601,24601
24501 continue
      if (i9keyc.eq.1) go to 24701
      go to 24701
24601 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24701
      write(6,31530)
24651 write(6,31640) i9data,(r9dim1(lq),r9dim2(lq),r9df99(lq),lq=1,2)
24701 c9ans1=(0.0,0.0)
c
          lv2    = .false.
          l9comp = .false.
      i9data = i9data + 1
      if((.not.lv2.and..not.l9comp).or.(lv2.and.l9comp))go to 25601
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25801
      write(6,31530)
      go to 25701
25601 if(i9keyc.eq.1) go to 25801
      go to 25801
25701 write(6,31700) i9data,lv2,l9comp
25801 continue
c
          iv3    = 10
          i9comp = 10
      i9data = i9data + 1
      if (iabs(iv3-i9comp).eq.0) go to 23302
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23502
      write(6,31530)
      go to 23402
23302 if( i9keyc.eq.1 ) go to 23502
      go to 23502
23402 write(6,31600) i9data,iv3,i9comp
23502 i9ans1=0
c
          rv3    = 11.
          r9comp = 11.
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23652
      r9dif3 = abs(( rv3 - r9comp )/r9comp)
23602 if(r9dif3 - 5.0e-6)                23702,23702,23752
23652 r9dif3 = abs(rv3)
      go to 23602
23702 if( i9keyc.eq.1) go to 23852
      go to 23852
23752 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23852
      write(6,31530)
23802 write(6,31610) i9data,rv3,r9comp,r9dif3
23852 r9ans1 = 0.0e00
c
          dv3     = 1.248938762487654d04
          d9comp  = dt3(3)
      i9data = i9data + 1
      if( dabs( d9comp ) .eq. 0.0d00 ) go to 23951
      d9dif3 = dabs(( dv3-d9comp )/d9comp )
23901 if(d9dif3 - 5.0d-16)                24001,24001,24051
23951 d9dif3 = dabs(dv3)
      go to 23901
24001 if( i9keyc.eq.1 ) go to 24151
      go to 24151
24051 i9errc = i9errc + 1
      if( i9keyc.eq.1 ) go to 24151
      write(6,31530)
24101 write(6,31620) i9data,dv3,d9comp,d9dif3
24151 d9ans1 = 0.0d00
c
          cv3    = (1.3,0.)
          c9ans1 = cv3
          c9comp = (1.3,0.)
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24502 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24552
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-6) 24502,24502,24602
24552 if (abs(r9df99(lq))-5.0e-6) 24502,24602,24602
24502 continue
      if (i9keyc.eq.1) go to 24702
      go to 24702
24602 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24702
      write(6,31530)
24652 write(6,31640) i9data,(r9dim1(lq),r9dim2(lq),r9df99(lq),lq=1,2)
24702 c9ans1=(0.0,0.0)
c
          lv3    = .true.
          l9comp = .true.
      i9data = i9data + 1
      if((.not.lv3.and..not.l9comp).or.(lv3.and.l9comp))go to 25602
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25802
      write(6,31530)
      go to 25702
25602 if(i9keyc.eq.1) go to 25802
      go to 25802
25702 write(6,31700) i9data,lv3,l9comp
25802 continue
c
          iv4    = 15
          i9comp = 15
      i9data = i9data + 1
      if (iabs(iv4-i9comp).eq.0) go to 23303
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23503
      write(6,31530)
      go to 23403
23303 if( i9keyc.eq.1 ) go to 23503
      go to 23503
23403 write(6,31600) i9data,iv4,i9comp
23503 i9ans1=0
      if(i9keyc.eq.1) go to 25900
25900 continue
c
          rv4    = 1.6
          r9comp = 1.6
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23653
      r9dif3 = abs(( rv4 - r9comp )/r9comp)
23603 if(r9dif3 - 5.0e-6)                23703,23703,23753
23653 r9dif3 = abs(rv4)
      go to 23603
23703 if( i9keyc.eq.1) go to 23853
      go to 23853
23753 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23853
      write(6,31530)
23803 write(6,31610) i9data,rv4,r9comp,r9dif3
23853 r9ans1 = 0.0e00
c
          cv4     = (1.72372,382.5642)
          c9ans1 = cv4
          c9comp  = ct3(3)
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24503 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24553
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-6) 24503,24503,24603
24553 if (abs(r9df99(lq))-5.0e-6) 24503,24603,24603
24503 continue
      if (i9keyc.eq.1) go to 24703
      go to 24703
24603 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24703
      write(6,31530)
24653 write(6,31640) i9data,(r9dim1(lq),r9dim2(lq),r9df99(lq),lq=1,2)
24703 c9ans1=(0.0,0.0)
c
          lv4    = .false.
          l9comp = .false.
      i9data = i9data + 1
      if((.not.lv4.and..not.l9comp).or.(lv4.and.l9comp))go to 25603
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25803
      write(6,31530)
      go to 25703
25603 if(i9keyc.eq.1) go to 25803
      go to 25803
25703 write(6,31700) i9data,lv4,l9comp
25803 continue
c
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
