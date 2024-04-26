      integer    i9ans1,i9comp,lq,l9eans,l9ecom
      real       r9ans1,r9comp,r9dif3
      double precision   d9ans1,d9comp,d9dif3
      complex    c9ans1,c9comp,c9df9
      real       r9dim1(2),r9dim2(2),r9df99(2)
      equivalence        (c9ans1,r9dim1(1)),(c9comp,r9dim2(1)),
     *                   (c9df9,r9df99(1))
      logical    l9ans1,l9comp
      equivalence     (l9eans,l9ans1),(l9ecom,l9comp)
          double precision    d03,d08,d13
          complex             c04,c09,c14
          logical             l05,l10,l15
          dimension i01(2),r02(2),d03(3),c04(4),l05(6)
          common    /n01/ i01 /n02/ r02 /n03/ d03 /n04/ c04
     1              /n05/ l05 /n06/ i06(2,3) /n07/ r07(3,4)
     2              /n08/ d08(2,4) /n09/ c09(3,3) /n10/ l10(5,2)
     3              /n11/ i11(1,2,3) /n12/ r12(3,1,2) /n13/ d13(2,2,2)
     4              /n14/ c14(3,2,1) /n15/ l15(1,3,2)
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
          i01(1) = 1
          i9comp = 1
      i9data = i9data + 1
      if (iabs(i01(1)-i9comp).eq.0) go to 23300
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23500
      write(6,31530)
      go to 23400
23300 if( i9keyc.eq.1 ) go to 23500
      goto 23500
23400 write(6,31600) i9data,i01(1),i9comp
23500 i9ans1=0
c
          rsw    = 0.2
          r02(2) = rsw*10.
          r9comp = 2.
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23650
      r9dif3 = abs(( r02(2) - r9comp )/r9comp)
23600 if(r9dif3 - 5.0e-6)                23700,23700,23750
23650 r9dif3 = abs(r02(2))
      go to 23600
23700 if( i9keyc.eq.1) go to 23850
      go to 23850
23750 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23850
      write(6,31530)
23800 write(6,31610) i9data,r02(2),r9comp,r9dif3
23850 r9ans1 = 0.0e00
c
          dsw    = 2.d0
          i = 9
          j = 6
          k = 2*i - 4*j + i
          d03(k) = dsw**dsw*2.d0
          d9comp = 8.d0
      i9data = i9data + 1
      if( dabs( d9comp ) .eq. 0.0d00 ) go to 23950
      d9dif3 = dabs(( d03(3)-d9comp )/d9comp )
23900 if(d9dif3 - 5.0d-16)                24000,24000,24050
23950 d9dif3 = dabs(d03(3))
      go to 23900
24000 if( i9keyc.eq.1 ) go to 24150
      go to 24150
24050 i9errc = i9errc + 1
      if( i9keyc.eq.1 ) go to 24150
      write(6,31530)
24100 write(6,31620) i9data,d03(3),d9comp,d9dif3
24150 d9ans1 = 0.0d00
c
          c04(1) = (1.,1.)
          c04(1) = c04(1)/0.5
         c9ans1= c04(1)
          c9comp = (2.,2.)
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
          l05(1) = .true.
          l05(1) = .not.l05(1)
          l9comp = .false.
      i9data = i9data + 1
      if((.not.l05(1).and..not.l9comp).or.(l05(1).and.l9comp))go to 2560
     *0
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25800
      write(6,31530)
      go to 25700
25600 if(i9keyc.eq.1) go to 25800
      go to 25800
25700 write(6,31700) i9data,l05(1),l9comp
25800 continue
c
          isw      = 2
          i06(2,3) = 303
          i06(1,1) = isw*i06(2,3)/101
          i9comp   = 6
      i9data = i9data + 1
      if (iabs(i06(1,1)-i9comp).eq.0) go to 23301
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23501
      write(6,31530)
      go to 23401
23301 if( i9keyc.eq.1 ) go to 23501
      go to 23501
23401 write(6,31600) i9data,i06(1,1),i9comp
23501 i9ans1=0
c
          i = 2
          r07(2*i-1,3*i-2) = 7.962e0
          r9comp           = 7.962e0
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23651
      r9dif3 = abs(( r07(3,4) - r9comp )/r9comp)
23601 if(r9dif3 - 5.0e-6)                23701,23701,23751
23651 r9dif3 = abs(r07(3,4))
      go to 23601
23701 if( i9keyc.eq.1) go to 23851
      go to 23851
23751 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23851
      write(6,31530)
23801 write(6,31610) i9data,r07(3,4),r9comp,r9dif3
23851 r9ans1 = 0.0e00
c
          d08(2,2) = 0.898912532645123d04
          d9comp   = 0.898912532645123d04
      i9data = i9data + 1
      if( dabs( d9comp ) .eq. 0.0d00 ) go to 23951
      d9dif3 = dabs(( d08(2,2)-d9comp )/d9comp )
23901 if(d9dif3 - 5.0d-16)                24001,24001,24051
23951 d9dif3 = dabs(d08(2,2))
      go to 23901
24001 if( i9keyc.eq.1 ) go to 24151
      go to 24151
24051 i9errc = i9errc + 1
      if( i9keyc.eq.1 ) go to 24151
      write(6,31530)
24101 write(6,31620) i9data,d08(2,2),d9comp,d9dif3
24151 d9ans1 = 0.0d00
c
          i = 0
          j = -1
          c09(3*i+2,2*j+3) = (1.23,1.23)
         c9ans1= c09(2,1)
          c9comp           = (1.23,1.23)
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
          i = 52
          l10(5,2) = i.eq.52
          l9comp   = .true.
      i9data = i9data + 1
      if((.not.l10(5,2).and..not.l9comp).or.(l10(5,2).and.l9comp))go to
     *25601
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25801
      write(6,31530)
      go to 25701
25601 if(i9keyc.eq.1) go to 25801
      go to 25801
25701 write(6,31700) i9data,l10(5,2),l9comp
25801 continue
c
          i11(1,1,1) = 10
          i11(1,1,1) = i11(1,1,1) + 1
          i9comp = 11
      i9data = i9data + 1
      if (iabs(i11(1,1,1)-i9comp).eq.0) go to 23302
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23502
      write(6,31530)
      go to 23402
23302 if( i9keyc.eq.1 ) go to 23502
      go to 23502
23402 write(6,31600) i9data,i11(1,1,1),i9comp
23502 i9ans1=0
c
          r12(2,1,2) = 3.25
          r12(2,1,2) = r12(2,1,2)*4.
          r9comp     = 13.
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23652
      r9dif3 = abs(( r12(2,1,2) - r9comp )/r9comp)
23602 if(r9dif3 - 5.0e-6)                23702,23702,23752
23652 r9dif3 = abs(r12(2,1,2))
      go to 23602
23702 if( i9keyc.eq.1) go to 23852
      go to 23852
23752 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23852
      write(6,31530)
23802 write(6,31610) i9data,r12(2,1,2),r9comp,r9dif3
23852 r9ans1 = 0.0e00
c
          i = 1
          j = 2
          k = 3
          d13(i,j,k-1) = 1.3131313921245d05
          d9comp       = 1.3131313921245d05
      i9data = i9data + 1
      if( dabs( d9comp ) .eq. 0.0d00 ) go to 23952
      d9dif3 = dabs(( d13(1,2,2)-d9comp )/d9comp )
23902 if(d9dif3 - 5.0d-16)                24002,24002,24052
23952 d9dif3 = dabs(d13(1,2,2))
      go to 23902
24002 if( i9keyc.eq.1 ) go to 24152
      go to 24152
24052 i9errc = i9errc + 1
      if( i9keyc.eq.1 ) go to 24152
      write(6,31530)
24102 write(6,31620) i9data,d13(1,2,2),d9comp,d9dif3
24152 d9ans1 = 0.0d00
c
          c14(3,1,1) = (11.0,16.0)
          c9ans1     = c14(3,1,1) + (3.0,-2.0)
          c9comp     = (1.4e01,1.4e01)
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
          l15(1,1,1) = .false.
          l9comp     = .false.
      i9data = i9data + 1
      if((.not.l15(1,1,1).and..not.l9comp).or.(l15(1,1,1).and.l9comp))go
     * to 25602
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25802
      write(6,31530)
      go to 25702
25602 if(i9keyc.eq.1) go to 25802
      go to 25802
25702 write(6,31700) i9data,l15(1,1,1),l9comp
25802 continue
c
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
