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
         ufub01(r40) = 1.0 + r40
         ufub02(r40,r41) = (1.0/r40+1.0/r41)/(r40/r41-r41/r40)+1.0
         ufub03(r40) = r40+r1val1+123456.0
         ufuf04(r40,r41) = 1.0-(r40+r41-r1val1)/(2.0*r41*r1val1)
         ufuf05(i40,i41) = i40*i41+10*i40
         ufuf06(i40,i41) = i40+i41+i40*i41+100*i40+1000*i41
         ufuf07(i40) = (i40+i1val1)*(i40**2-2*i40*i1val1+i1val1**2)
         ufuf08(i40,i41) = i40**3/((i40-i41)*(i40-i1val1))+
     1                     i41**3/((i41-i1val1)*(i41-i40))+
     2                     i1val1**3/((i1val1-i40)*(i1val1-i41))
         r1val1=1.0
         r1val2=1.0
         i1val1=1
         i1val2=1
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
         r9ans1= ufub01(r1val1)
         r9comp= 2.0
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
         r9ans1 = ufub02(10.0,5.0)
      r9comp =1.2
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
         r9ans1 = ufub03(1000000.0)
         r9comp = 1123457.0
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
      r9ans1 = ufuf04(1.0,1.0)
         r9comp = 0.5
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
      r9ans1 = ufuf05(1,10)
      r9comp = 20.0
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
      r9ans1 = ufuf06(2,3)
         r9comp = 3211
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23655
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23605 if(r9dif3 - 5.0e-6)                23705,23705,23755
23655 r9dif3 = abs(r9ans1)
      go to 23605
23705 if( i9keyc.eq.1) go to 23855
      write(6,31520)
      go to 23805
23755 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23855
      write(6,31530)
      write(6,31610) i9data,r9ans1,r9comp,r9dif3
23805 continue
23855 r9ans1 = 0.0e00
c
         r9ans1 = ufuf07(2)
      r9comp = 3
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23656
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23606 if(r9dif3 - 5.0e-6)                23706,23706,23756
23656 r9dif3 = abs(r9ans1)
      go to 23606
23706 if( i9keyc.eq.1) go to 23856
      write(6,31520)
      go to 23806
23756 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23856
      write(6,31530)
      write(6,31610) i9data,r9ans1,r9comp,r9dif3
23806 continue
23856 r9ans1 = 0.0e00
c
         r9ans1 = ufuf08(100,10)
         r9comp = 111
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23657
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23607 if(r9dif3 - 5.0e-6)                23707,23707,23757
23657 r9dif3 = abs(r9ans1)
      go to 23607
23707 if( i9keyc.eq.1) go to 23857
      write(6,31520)
      go to 23807
23757 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23857
      write(6,31530)
      write(6,31610) i9data,r9ans1,r9comp,r9dif3
23807 continue
23857 r9ans1 = 0.0e00
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
