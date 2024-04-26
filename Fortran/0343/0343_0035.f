      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
      real       r9ans1,r9comp,r9dif1,r9dif2,r9dif3
      complex    c9ans1,c9comp,c9df9
      real       r9dif5,r9dif6,r9dif7,r9dif8,r9dif9,r9df10,r9df11
      real       r9dim1(2),r9dim2(2),r9df99(2)
      equivalence        (c9ans1,r9dim1(1)),(c9comp,r9dim2(1)),
     *                   (c9df9,r9df99(1))
         logical    l2tab1(3,3,3),l2tab2(3,3,3),l1val1
         complex    c2tab1(2,2,2),c2tab2(2,2,2)
         complex    ufuj5,x5
         dimension  r2tab1(2,2,2),r2tab2(2,2,2)
         dimension  r2tab3(2,2,2),r2tab4(2,2,2)
         data       c2tab1(1,1,1)/(1.0,2.0)/,c2tab2(2,2,2)/(0.5,0.25)/
     1             ,r2tab3/1.,2.,3.,4.,5.,6.,7.,8./
     2             ,r2tab4/8.,7.,6.,5.,4.,3.,2.,1./
         common   /a/l2tab1,l2tab2,l1val1,r2tab1,r2tab2
         ufuj5(x5)=2.*x5
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
31640 format(1h+,9x,1h(,i3,2h ),21x,e15.8,21x,e15.8,30x,e15.8 /
     *      37x,e15.8,21x,e15.8,30x,e15.8 )
31650 format(1h ,36x,e15.8,21x,e15.8,30x,e15.8 )
c
         i=2
         r9ans1=r2tab1(2*i-3,i,i-1)
         r9comp=12.1
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
      write(6,31610) i9data,r9ans1,r9comp,r9dif3
23800 continue
23850 r9ans1 = 0.0e00
c
         i9ans1=0
         l1val1=l2tab1(1,2,3).and..not.l2tab2(3,2,1)
         if (l1val1) i9ans1=1
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23000
      if(i9keyc.eq.1) go to 23100
      write(6,31510) i9data
      go to 23100
23000 if(i9keyc.eq.1) go to 23200
      write(6,31520)
      go to 23200
23100 i9errc = i9errc + 1
23200 i9ans1=0
c
         i9ans1=0
         if (r2tab2(2,2,1)-9.45)        2,1,2
    1    i9ans1=1
    2 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23001
      if(i9keyc.eq.1) go to 23101
      write(6,31510) i9data
      go to 23101
23001 if(i9keyc.eq.1) go to 23201
      write(6,31520)
      go to 23201
23101 i9errc = i9errc + 1
23201 i9ans1=0
c
         i9ans1=0
         if (l2tab1(1,2,3))             i9ans1=1
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23002
      if(i9keyc.eq.1) go to 23102
      write(6,31510) i9data
      go to 23102
23002 if(i9keyc.eq.1) go to 23202
      write(6,31520)
      go to 23202
23102 i9errc = i9errc + 1
23202 i9ans1=0
c
         i=2
         r9ans1=fefj08(r2tab2(i-1,i,i))
         r9comp=0.6275
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
      write(6,31610) i9data,r9ans1,r9comp,r9dif3
23801 continue
23851 r9ans1 = 0.0e00
c
         call seaj04(c2tab1(1,1,1),c9ans1)
         c9comp=(2.0,4.0)
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
      write(6,31640) i9data,(r9dim1(lq),r9dim2(lq),r9df99(lq),lq=1,2)
24650 continue
24700 c9ans1=(0.0,0.0)
c
         c9ans1=ufuj5(c2tab2(2,2,2))
         c9comp=(1.0,0.5)
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
      write(6,31640) i9data,(r9dim1(lq),r9dim2(lq),r9df99(lq),lq=1,2)
24651 continue
24701 c9ans1=(0.0,0.0)
c
  600    format(1h0,80x,17hf20105j1 item-09 , f4.1 )
         r9ans1=r2tab3(1,1,1)
         r9comp=1.0
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23652
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23602 if(r9dif3 - 5.0e-6)                23702,23702,23752
23652 r9dif3 = abs(r9ans1)
      go to 23602
23702 if( i9keyc.eq.1) go to 23852
      write(6,31520)
      go to 23802
23752 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23852
      write(6,31530)
      write(6,31610) i9data,r9ans1,r9comp,r9dif3
23802 continue
23852 r9ans1 = 0.0e00
c
  601    format(1h0,80x,17hf20105j1 item-10 , 8f4.1 )
         r9ans1=r2tab3(1,2,1)
         r9comp=3.0
      i9data = i9data + 1
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
      write(6,31610) i9data,r9ans1,r9comp,r9dif3
23803 continue
23853 r9ans1 = 0.0e00
c
  602    format(1h0,80x,17hf20105j1 item-10 , 8f4.1 )
         r9ans1=r2tab4(2,1,1)
         r9comp=7.0
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23654
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23604 if(r9dif3 - 5.0e-6)                23704,23704,23754
23654 r9dif3 = abs(r9ans1)
      go to 23604
23704 if( i9keyc.eq.1) go to 23854
      write(6,31520)
      go to 23804
23754 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23854
      write(6,31530)
      write(6,31610) i9data,r9ans1,r9comp,r9dif3
23804 continue
23854 r9ans1 = 0.0e00
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
      block data
         common   /a/l2tab1,l2tab2,l1val1,r2tab1,r2tab2
         logical    l2tab1(3,3,3),l2tab2(3,3,3),l1val1
         dimension  r2tab1(2,2,2),r2tab2(2,2,2)
         data  l2tab1(1,2,3)/.true./,l2tab2(3,2,1)/.false./
         data  r2tab1(1,2,1)/12.1/,r2tab2(2,2,1)/9.45/
     1        ,r2tab2(1,2,2)/0.6275/
         end

      subroutine seaj04(c1val1,c9ans1)
         complex    c1val1,c9ans1
         c9ans1=2.*c1val1
         return
         end
      real function  fefj08(r1val1)
         fefj08=r1val1
         return
         end
