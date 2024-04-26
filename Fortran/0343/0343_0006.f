      logical    l9ans1,l9comp
      equivalence     (l9eans,l9ans1),(l9ecom,l9comp)
         logical              l1val1,l1val2,
     1                  l2tab1(1),l2tab2(3),l2tab3(1),l2tab4(3),
     2                  l2tab5(3),l2tab6(3)
         double precision     d1val1
         common    /label/l2tab4
         common    l2tab5
         equivalence    (l2tab1(1),l2tab6(1))
      data      l2tab1 /.true./,l2tab2(1)/.true./,l2tab3(1)/.true./
         data      i1sw   /  0   /
         data      i1val9/ 1 /,i1val8/ 2 /
    3    l9ans1=l2tab3(1)
         if(i1sw)   4,4,5
    4    i1sw=1
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
31700 format(1h+,9x,1h( ,i3,2h ),33x,l3,33x,l3 )
c
         do 1 i=7,7
         read(5,900)    l1val1
  900    format( l1 )
    1    continue
         l9ans1=l1val1
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2560
     *0
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25800
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25700
25600 if(i9keyc.eq.1) go to 25800
      write(6,31520)
25700 continue
25800 continue
c
         if(.true.) read(5,900) l1val1
         l9ans1=l1val1
         l9comp=.false.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2560
     *1
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25801
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25701
25601 if(i9keyc.eq.1) go to 25801
      write(6,31520)
25701 continue
25801 continue
c
         do  2 i=1,1
    2    l9ans1=l2tab1(i)
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2560
     *2
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25802
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25702
25602 if(i9keyc.eq.1) go to 25802
      write(6,31520)
25702 continue
25802 continue
c
         if(.true.)     l9ans1=l2tab2(1)
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2560
     *3
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25803
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25703
25603 if(i9keyc.eq.1) go to 25803
      write(6,31520)
25703 continue
25803 continue
c
         go to  3
    5    continue
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2560
     *4
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25804
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25704
25604 if(i9keyc.eq.1) go to 25804
      write(6,31520)
25704 continue
25804 continue
c
         i1val1=1
         r1val1=67108863.0
         l9ans1=i1val1 .lt. r1val1
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2560
     *5
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25805
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25705
25605 if(i9keyc.eq.1) go to 25805
      write(6,31520)
25705 continue
25805 continue
c
         i1val1=1
         r1val1=-67108864.0
         l9ans1=i1val1.le.r1val1
         l9comp=.false.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2560
     *6
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25806
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25706
25606 if(i9keyc.eq.1) go to 25806
      write(6,31520)
25706 continue
25806 continue
c
         i1val1=1
         r1val1=357.0
         l9ans1=i1val1.le.r1val1
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2560
     *7
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25807
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25707
25607 if(i9keyc.eq.1) go to 25807
      write(6,31520)
25707 continue
25807 continue
c
         r1val1=1.0
         d1val1=2305843009213693951.0d0
         l9ans1=r1val1.ge.d1val1
         l9comp=.false.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2560
     *8
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25808
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25708
25608 if(i9keyc.eq.1) go to 25808
      write(6,31520)
25708 continue
25808 continue
c
         r1val1=1.0
         d1val1=-2305843009213693952.0d0
         l9ans1=r1val1.lt.d1val1
         l9comp=.false.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2560
     *9
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25809
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25709
25609 if(i9keyc.eq.1) go to 25809
      write(6,31520)
25709 continue
25809 continue
c
         r1val1=1.0
         d1val1=0.0d0
         l9ans1=r1val1.gt.d1val1
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2561
     *0
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25810
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25710
25610 if(i9keyc.eq.1) go to 25810
      write(6,31520)
25710 continue
25810 continue
c
         d1val1=13.0d0
         i1val1=2147483647
         l9ans1=d1val1.eq.i1val1
         l9comp=.false.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2561
     *1
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25811
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25711
25611 if(i9keyc.eq.1) go to 25811
      write(6,31520)
25711 continue
25811 continue
c
         d1val1=1250.0d0
         i1val1=-2147483647
         l9ans1=d1val1.eq.i1val1
         l9comp=.false.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2561
     *2
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25812
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25712
25612 if(i9keyc.eq.1) go to 25812
      write(6,31520)
25712 continue
25812 continue
c
         d1val1=1.0d0
         i1val1=1
         l9ans1=d1val1.eq.i1val1
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2561
     *3
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25813
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25713
25613 if(i9keyc.eq.1) go to 25813
      write(6,31520)
25713 continue
25813 continue
c
         i1val1=1212
         i1val1=1
         r1val1=1.0
         l9ans1=(i1val1+r1val1).eq.i1val1
         l9comp=.false.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2561
     *4
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25814
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25714
25614 if(i9keyc.eq.1) go to 25814
      write(6,31520)
25714 continue
25814 continue
      if(i9keyc.eq.1) go to 25900
25900 continue
c
         i1val1=1
         r1val1=1531221.0
         l9ans1=(r1val1+r1val1).eq.i1val1
         l9comp=.false.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2561
     *5
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25815
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25715
25615 if(i9keyc.eq.1) go to 25815
      write(6,31520)
25715 continue
25815 continue
c
         i1val1=1
         r1val1=1.0
         d1val1=1.0d0
         l9ans1=(r1val1+i1val1).eq.(i1val1+d1val1)
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2561
     *6
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25816
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25716
25616 if(i9keyc.eq.1) go to 25816
      write(6,31520)
25716 continue
25816 continue
c
         i1val1=35
         r1val1=1.0
         d1val1=1.0d0
         l9ans1=(r1val1+i1val1).eq.(r1val1+d1val1)
          l9comp =.false.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2561
     *7
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25817
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25717
25617 if(i9keyc.eq.1) go to 25817
      write(6,31520)
25717 continue
25817 continue
c
         i1val1=50010
         r1val1=50010.0
         d1val1=50010.0d0
c
         l9ans1=(r1val1+i1val1).eq.(i1val1*r1val1+d1val1)
         l9comp=.false.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2561
     *8
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25818
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25718
25618 if(i9keyc.eq.1) go to 25818
      write(6,31520)
25718 continue
25818 continue
c
         l9ans1=(r1val1+r1val1).eq.(d1val1+d1val1)
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2561
     *9
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25819
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25719
25619 if(i9keyc.eq.1) go to 25819
      write(6,31520)
25719 continue
25819 continue
c
         l9ans1=(i1val1+i1val1).eq.(i1val1+d1val1)
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2562
     *0
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25820
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25720
25620 if(i9keyc.eq.1) go to 25820
      write(6,31520)
25720 continue
25820 continue
c
         l9ans1=(i1val1+i1val1).eq.(r1val1+d1val1)
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2562
     *1
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25821
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25721
25621 if(i9keyc.eq.1) go to 25821
      write(6,31520)
25721 continue
25821 continue
c
         l9ans1=(i1val1+i1val1).eq.(i1val1*r1val1+d1val1)
         l9comp=.false.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2562
     *2
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25822
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25722
25622 if(i9keyc.eq.1) go to 25822
      write(6,31520)
25722 continue
25822 continue
c
         l9ans1=(i1val1+i1val1).eq.(d1val1+d1val1)
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2562
     *3
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25823
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25723
25623 if(i9keyc.eq.1) go to 25823
      write(6,31520)
25723 continue
25823 continue
c
         l9ans1=(i1val1+i1val1).eq.(i1val1+i1val1)
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2562
     *4
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25824
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25724
25624 if(i9keyc.eq.1) go to 25824
      write(6,31520)
25724 continue
25824 continue
c
         l9ans1=(i1val1+r1val1).eq.(i1val1+r1val1)
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2562
     *5
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25825
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25725
25625 if(i9keyc.eq.1) go to 25825
      write(6,31520)
25725 continue
25825 continue
c
         l9ans1=(r1val1+r1val1).eq.(r1val1+r1val1)
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2562
     *6
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25826
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25726
25626 if(i9keyc.eq.1) go to 25826
      write(6,31520)
25726 continue
25826 continue
c
      l9ans1 = (i1val1+d1val1).gt.(r1val1+d1val1-0.5)
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2562
     *7
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25827
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25727
25627 if(i9keyc.eq.1) go to 25827
      write(6,31520)
25727 continue
25827 continue
c
         l9ans1=(i1val1+d1val1).eq.(i1val1*r1val1+d1val1)
         l9comp=.false.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2562
     *8
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25828
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25728
25628 if(i9keyc.eq.1) go to 25828
      write(6,31520)
25728 continue
25828 continue
c
         l9ans1=(r1val1+d1val1).eq.(i1val1*r1val1+d1val1)
         l9comp=.false.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2562
     *9
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25829
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25729
25629 if(i9keyc.eq.1) go to 25829
      write(6,31520)
25729 continue
25829 continue
      if(i9keyc.eq.1) go to 25901
25901 continue
         l9ans1=(d1val1+d1val1).eq.(d1val1+d1val1)
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2563
     *0
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25830
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25730
25630 if(i9keyc.eq.1) go to 25830
      write(6,31520)
25730 continue
25830 continue
c
         l2tab4(1)=.true.
         l9ans1=l2tab4(i1val9)
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2563
     *1
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25831
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25731
25631 if(i9keyc.eq.1) go to 25831
      write(6,31520)
25731 continue
25831 continue
c
         l2tab5(2)=.true.
         l9ans1=l2tab5(i1val9+1)
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2563
     *2
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25832
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25732
25632 if(i9keyc.eq.1) go to 25832
      write(6,31520)
25732 continue
25832 continue
c
      l2tab6(1)=.true.
         l9ans1=l2tab6(i1val8-1)
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2563
     *3
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25833
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25733
25633 if(i9keyc.eq.1) go to 25833
      write(6,31520)
25733 continue
25833 continue
c
         l2tab2(1)=.true.
         call saaj01(l2tab2,1,l9ans1)
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2563
     *4
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25834
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25734
25634 if(i9keyc.eq.1) go to 25834
      write(6,31520)
25734 continue
25834 continue
c
         l2tab2(2)=.true.
         call sabj01(l2tab2,1*i1val9+1,l9ans1)
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2563
     *5
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25835
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25735
25635 if(i9keyc.eq.1) go to 25835
      write(6,31520)
25735 continue
25835 continue
c
         call sacj01(l2tab2)
         l9ans1=l2tab2(1)
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2563
     *6
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25836
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25736
25636 if(i9keyc.eq.1) go to 25836
      write(6,31520)
25736 continue
25836 continue
         i1sw=0
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end

      subroutine saaj01(l2tab2,m,l9ans1)
      logical l2tab2(m),l9ans1
      l9ans1=l2tab2(1*m)
      return
      end

      subroutine sabj01(l2tab2,m,l9ans1)
      logical l2tab2(3),l9ans1
      l9ans1=l2tab2(m)
      return
      end

      subroutine sacj01(l2tab2)
      logical  l2tab2(3)
      i1val9=2
      l2tab2(1*i1val9-1)=.true.
      return
      end
