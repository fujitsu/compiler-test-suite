      logical    l9ans1,l9comp
      equivalence     (l9eans,l9ans1),(l9ecom,l9comp)
      integer        funb1
      real           funb2
          logical   l8tab1(1),log
      dimension  i2tab1(2),r2tab1(3)
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
31700 format(1h+,9x,1h( ,i3,2h ),33x,l3,33x,l3 )
      i1mon1 = 3
      i1mon2 = 11
      r1mon1 = 0.100012e+1
      r1mon2 = 0.31269e+1
      i2tab1(1) = 2
      i2tab1(2) = 7
      r2tab1(1) = 3.332e0
      r2tab1(2) = -1.99879e0
      r2tab1(3) = 8.112e-1
c
      l9ans1 = .false.
      l9ans1 = ( i1mon1 .lt. i1mon1*i1mon2 ) .and.
     1                        ( -i1mon1*i1mon1 .le. i1mon2/i1mon1 )
      l9comp = .true.
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
      l9comp = .true.
      l9ans1 = ( 5 .gt. 2*i1mon1 ) .and.
     1  ((((2-i1mon1)*i1mon2)-1) .lt. (((i1mon2+i1mon1)*i1mon2)+i1mon1))
      l9comp = .false.
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
      l9ans1 = .true.
      l9ans1 = ( i1mon1**2 .le. ((1-i1mon2/i1mon1)-i1mon1*i1mon2)-5)
     1    .and. ( 3 .gt. i1mon1/i1mon2 )
      l9comp = .false.
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
      l9ans1 = .true.
      l9ans1 = ( 3**i1mon1 .eq. (2-(i1mon1*1+3)+(i1mon2**2+1))) .and.
     1    (i1mon1**3 .gt.((6-i1mon1)*i1mon2+2))
      l9comp = .false.
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
      l9ans1 = .false.
      l9ans1 = ( 3 .ne. i1mon1 ) .or. ( i1mon1/i1mon2 .le. 0 )
      l9comp = .true.
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
      l9ans1 = .false.
      l9ans1 = ( i1mon1*2 .lt. i1mon1/i1mon1 ) .or.
     1                        ( 8/i1mon2 .le. 4*i1mon2 )
      l9comp = .true.
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
      l9ans1 = .false.
      l9ans1 = (i1mon2/i1mon1 .ge. 5*i1mon1 ) .or.
     1    ( i1mon2**i1mon1 .lt. (7-i1mon1+(i1mon1*i1mon2*3-1)*2))
      l9comp = .false.
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
      l9ans1 = .false.
      l9ans1 = .not. ( +i1mon1*3 .lt. i1mon2**1 )
      l9comp = .false.
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
      l9ans1 = .false.
      l9ans1 = .not. ( 1 .ne. i1mon1*1 )
      l9comp = .false.
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
      l9ans1 = .true.
      l9ans1 = ( +i1mon1*1 .le. i1mon1**1 ) .and. .not.
     1                        ( i1mon1*i1mon2 .ge. i1mon2**i1mon1 )
      l9comp = .true.
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
      l9ans1 = .false.
      l9ans1 = ( -i1mon2/1 .lt. 2**i1mon2 ) .and. .not.
     1                        ( +3*2 .lt. 6 )
      l9comp = .true.
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
      l9ans1 = .true.
      l9ans1=((1-(i1mon1+2)*i1mon2+(i1mon1+4)**i1mon1)-1 .ge.
     1    ((2-i1mon1+(i1mon2*1-1)**1)+1)) .and. .not.
     2              ( i1mon2**1 .eq. 11 )
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
      l9ans1 = .true.
      l9ans1 = ((1-(i1mon1+2)*i1mon2+(i1mon1+4)**1)-i1mon1 .ge.
     1    ((i1mon2-1+(i1mon2*i1mon1-1)**1)-1)) .and. .not.
     2              ( i1mon1*i1mon2 .ne. i1mon2**4 )
      l9comp = .false.
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
      l9ans1 = .true.
      l9ans1 = ( i1mon1**1 .ne. 1**i1mon1 ) .or. .not.
     1                        ( i1mon2**i1mon1 .gt. i1mon1**i1mon2 )
      l9comp = .true.
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
      l9ans1 = .true.
      l9ans1 = ( i1mon2**2 .eq. 1**i1mon2 ) .or. .not.
     1                        ( 1 .lt. i1mon2 )
      l9comp = .false.
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
      l9ans1 = .false.
      l9ans1 = ( i1mon1*4 .gt. -i1mon1/i1mon2 ) .or. .not.
     1              ( 2/i1mon1 .le. i1mon1*1 )
      l9comp = .true.
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
      l9ans1 = .false.
      l9ans1 = ( 4**i1mon1 .lt. +i1mon2*i1mon2 ) .or. .not.
     1    ((i1mon2-1+(i1mon2*1-i1mon1)**i1mon1)-1 .le. -2*2 )
      l9comp = .true.
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
      l9ans1 = .true.
      l9ans1 = ( i1mon1 .lt. r1mon1*2. ) .and. (i1mon2 .ge. 3./r1mon1 )
      l9comp = .false.
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
      l9ans1 = .false.
      l9ans1 = ( 2*1 .eq. r1mon1*2. ) .and. ( i1mon1/1 .le. r1mon2**1. )
      l9comp = .false.
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
      l9ans1 = .false.
      l9ans1 = ( i1mon1**i1mon2 .eq. (r1mon1-r1mon2*(1.-r1mon1)/r1mon2))
     1                      .and. .not.
     2   (i1mon1**i1mon1.eq.(r1mon2-r1mon1*((.51-r1mon2)/r1mon1-2.)))
      l9comp = .false.
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
      l9ans1 = .false.
      l9ans1 = ( -r1mon2*r1mon1 .gt. i1mon1**i1mon2 ) .or. .not.
     1              (+r1mon1*r1mon2 .gt. i1mon2**i1mon1 )
      l9comp = .true.
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
      l9ans1 = .false.
      l9ans1 = ( 6. .le. i1mon2*10 ) .or. ( .5 .eq. i1mon1/2 )
      l9comp = .true.
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
      l9ans1 = .true.
      l9ans1 = ( r1mon2*1. .lt. -i1mon2/i1mon1 ) .or.
     1              ( 1.*r1mon2 .eq. +i1mon1/2 )
      l9comp = .false.
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
      l9ans1 = .false.
      l9ans1 = .not. ((((1.-r1mon2)*(r1mon1-2.)-2.)-r1mon2) .ge. 6 )
      l9comp = .true.
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
      l9ans1 = .true.
      l9ans1 = ( i1mon1*r2tab1(2)/1.lt. -i1mon1*funb2(4.) ) .and.
     1              ( funb1(i1mon2)/r1mon2 .lt. i1mon1**r2tab1(1))
      l9comp = .false.
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
      l9ans1 = .true.
      l9ans1 = (funb2(1.)-funb1(3) .eq. i1mon2*r2tab1(2) ) .and.
     1         ( i1mon1/i2tab1(1)-1. .eq. r2tab1(1)/funb1(2) )
      l9comp = .false.
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
      l9ans1 = .false.
      l9ans1 = ( i2tab1(2)/i1mon1-1.5 .ge. funb1(4)/r2tab1(2) ) .or.
     1              ( funb1(6)+funb2(11.2).ge.r1mon1*i2tab1(2) )
      l9comp = .true.
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
      l9ans1 = .false.
      l9ans1 = ( 1/r2tab1(2)*i1mon1 .le. +funb2(6.)-i1mon1 ) .and.
     1              ( r1mon2/funb1(i1mon2) .le. r2tab1(1)**i1mon1 )
      l9comp = .true.
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
      l9ans1 = .true.
      l9ans1 = .not. ( r1mon2*i2tab1(2) .ne. 1.5-i2tab1(2)/funb2(6.1) )
      l9comp = .false.
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
      l9ans1 = .false.
      l9ans1 = .not. ( -funb2(6.)-i1mon1 .gt. +funb2(1.)*i2tab1(2) )
      l9comp = .true.
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
      do  131  i = 1,1
      l8tab1(1) = .false.
      l8tab1(1) = ( r1mon1 .lt. r1mon2 ) .and. (r1mon2*1. .gt. r1mon1 )
  131 continue
      l9comp = .true.
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
      l8tab1(1) = .false.
      do  132  i = 1,1
      l8tab1(1) = ( r1mon1-1. .le. r1mon1+3.) .or.
     1                        ( r1mon2/r1mon1 .ge. r1mon1*r1mon2 )
  132 continue
      l9comp = .true.
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
      l8tab1(1) = .true.
      do  133  i = 1,1
      l8tab1(1) = ( r1mon2-1. .eq. r1mon2/r1mon1 ) .and.
     1                        ( r1mon1*r1mon2 .ne. r1mon2+3 )
  133 continue
      l9comp=.false.
      i9data = i9data + 1
      if((.not.l8tab1(1).and..not.l9comp).or.(l8tab1(1).and.l9comp))go t
     *o 25632
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25832
      write(6,31530)
      write(6,31700) i9data,l8tab1(1),l9comp
      go to 25732
25632 if(i9keyc.eq.1) go to 25832
      write(6,31520)
25732 continue
25832 continue
      do  134  i = 7,10,2
      j = i**i+2
  134 continue
      l8tab1(1) = ( r1mon2+3..ne. r1mon2/r1mon1 ) .or.
     1                        ( r1mon2*r1mon1 .lt. r1mon2-1. )
      l9comp=.true.
      i9data = i9data + 1
      if((.not.l8tab1(1).and..not.l9comp).or.(l8tab1(1).and.l9comp))go t
     *o 25633
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25833
      write(6,31530)
      write(6,31700) i9data,l8tab1(1),l9comp
      go to 25733
25633 if(i9keyc.eq.1) go to 25833
      write(6,31520)
25733 continue
25833 continue
      l9ans1 = .true.
      log = .true.
      if( log )  l9ans1 = ( i1mon2+3 .ge. i1mon2/i1mon1 ) .and.
     1                        (i1mon2*i1mon1 .eq. i1mon2-1 )
      l9comp = .false.
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
      l9ans1 = .false.
      if( log )  l9ans1 = ( i1mon2/i1mon1 .gt. i1mon2-1 ) .or.
     1                        ( i1mon2*i1mon1 .le. i1mon2+3 )
      l9comp = .false.
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
      l9ans1 = .false.
      if( log )  l9ans1 = .not. ( i1mon2+5 .lt. i1mon2/i1mon1-1 )
          l9comp = .true.
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
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end

      real  function  funb2 (r)
      funb2 = r
      return
      end

      integer  function  funb1 (i)
      funb1 = i
      return
      end
