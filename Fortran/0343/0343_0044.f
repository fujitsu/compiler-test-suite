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
          logical   l1v1,l1d1,l2t1,l2t2,l2tab(1),l301,l302,l3tab(5)
c
          common      i1v1,r1v1,l1v1
          equivalence (i1v1,i1d1),(r1v1,r1d1),(l1v1,l1d1)
c
          common      i2t1(5),i2t2(7),r2t1(6),r2t2(13),l2t1(3),l2t2(6)
          equivalence (i2tab(7),i2t2(2)),(r2tab(2),r2t1(4))
     1                ,(l2tab(1),l2t2(3))
          dimension   i2tab(9),r2tab(8)
c
          common      i301(10),i302(30),r301(15),r302(5),r303(10)
     1               ,l301(25),l302(5)
          equivalence (i301(5),i3tab(1)),(r302(3),r3tab(2))
     1                ,(l301(5),l3tab(5))
          dimension   i3tab(40),r3tab(30)
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
          i1v1   = 1
          i9comp = 1
      i9data = i9data + 1
      if (iabs(i1d1-i9comp).eq.0) go to 23300
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23500
      write(6,31530)
      write(6,31600) i9data,i1d1,i9comp
      go to 23400
23300 if( i9keyc.eq.1 ) go to 23500
      write(6,31520)
23400 continue
23500 i9ans1=0
c
          r1v1   = 2.
          r9comp = 2.
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23650
      r9dif3 = abs(( r1d1 - r9comp )/r9comp)
23600 if(r9dif3 - 5.0e-6)                23700,23700,23750
23650 r9dif3 = abs(r1d1)
      go to 23600
23700 if( i9keyc.eq.1) go to 23850
      write(6,31520)
      go to 23800
23750 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23850
      write(6,31530)
      write(6,31610) i9data,r1d1,r9comp,r9dif3
23800 continue
23850 r9ans1 = 0.0e00
c
         l1v1    = .true.
          l9comp = .true.
      i9data = i9data + 1
      if((.not.l1d1.and..not.l9comp).or.(l1d1.and.l9comp))go to 25600
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25800
      write(6,31530)
      write(6,31700) i9data,l1d1,l9comp
      go to 25700
25600 if(i9keyc.eq.1) go to 25800
      write(6,31520)
25700 continue
25800 continue
c
          i2t1(1) = 4
          i9comp  = 4
      i9data = i9data + 1
      if (iabs(i2tab(1)-i9comp).eq.0) go to 23301
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23501
      write(6,31530)
      write(6,31600) i9data,i2tab(1),i9comp
      go to 23401
23301 if( i9keyc.eq.1 ) go to 23501
      write(6,31520)
23401 continue
23501 i9ans1=0
c
          r2t1(5) = 5.
          r9comp  = 5.
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23651
      r9dif3 = abs(( r2tab(3) - r9comp )/r9comp)
23601 if(r9dif3 - 5.0e-6)                23701,23701,23751
23651 r9dif3 = abs(r2tab(3))
      go to 23601
23701 if( i9keyc.eq.1) go to 23851
      write(6,31520)
      go to 23801
23751 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23851
      write(6,31530)
      write(6,31610) i9data,r2tab(3),r9comp,r9dif3
23801 continue
23851 r9ans1 = 0.0e00
c
          l2t2(3) = .false.
          l9comp  = .false.
      i9data = i9data + 1
      if((.not.l2tab(1).and..not.l9comp).or.(l2tab(1).and.l9comp))go to
     *25601
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25801
      write(6,31530)
      write(6,31700) i9data,l2tab(1),l9comp
      go to 25701
25601 if(i9keyc.eq.1) go to 25801
      write(6,31520)
25701 continue
25801 continue
c
          i301(7) = 7
          i9comp  = 7
      i9data = i9data + 1
      if (iabs(i3tab(3)-i9comp).eq.0) go to 23302
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23502
      write(6,31530)
      write(6,31600) i9data,i3tab(3),i9comp
      go to 23402
23302 if( i9keyc.eq.1 ) go to 23502
      write(6,31520)
23402 continue
23502 i9ans1=0
c
          r302(5) = 8.
          r9comp  = 8.
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23652
      r9dif3 = abs(( r3tab(4) - r9comp )/r9comp)
23602 if(r9dif3 - 5.0e-6)                23702,23702,23752
23652 r9dif3 = abs(r3tab(4))
      go to 23602
23702 if( i9keyc.eq.1) go to 23852
      write(6,31520)
      go to 23802
23752 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23852
      write(6,31530)
      write(6,31610) i9data,r3tab(4),r9comp,r9dif3
23802 continue
23852 r9ans1 = 0.0e00
c
          l301(10)= .true.
          l9comp  = .true.
      i9data = i9data + 1
      if((.not.l301(10).and..not.l9comp).or.(l301(10).and.l9comp))go to
     *25602
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25802
      write(6,31530)
      write(6,31700) i9data,l301(10),l9comp
      go to 25702
25602 if(i9keyc.eq.1) go to 25802
      write(6,31520)
25702 continue
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
