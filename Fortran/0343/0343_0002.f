      integer      i1mon1,i1mon2,i2tab1(2),funb1
      real         r1mon1,r1mon2,r2tab1(1),r2tab2(2,3),funb2
      real         r2tab3(1,2,1)
      logical      l2tab1(2),fdab60
      logical    l9ans1,l9comp
      equivalence     (l9eans,l9ans1),(l9ecom,l9comp)
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
c
      i2tab1(1) = 2
      l9ans1 = 10 .lt. i2tab1(1)
      l9comp = .false.
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
      i1mon1 = 115
      l9ans1 = -11 .lt. i1mon1
      l9comp = .true.
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
      i1mon1 = 228
      l9ans1 = i1mon1 .lt. funb1(10)
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
      l9ans1 = i1mon1 .lt. 11502
      l9comp = .true.
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
      r1mon1 = 5.
      l9ans1 = r1mon1 .le. funb2(1.)
      l9comp = .false.
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
      r1mon2 = 5.
      l9ans1 = r1mon1 .le. r1mon2
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
      l9ans1 = 1. .eq. funb2(1.)
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
      r1mon1 = 11820.0
      l9ans1 = 11820.0 .eq. r1mon1
      l9comp = .true.
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
      i2tab1(1)=500
      i1mon1=500
      l9ans1 = i2tab1(1) .ne. i1mon1
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
      i2tab1(2) = 1000
      l9ans1 = i2tab1(1) .ne. i2tab1(2)
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
      l9ans1 = funb1(1500) .gt. 448
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
          l9ans1 = funb1(18).gt.funb1(3)
          l9comp = .true.
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
          r2tab1(1) =  0.3145926
      l9ans1 = r2tab1(1) .ge. 0.5
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
      l9ans1 = r2tab1(1) .ge. funb2(2.)
      l9comp = .false.
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
      l9ans1 = funb2(15.0) .ge. r1mon1
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
      l9ans1 = funb2(1.) .ge. r2tab1(1)
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
      i1mon1=10
      do  117  i = 10,20,5
      i1mon2 = 5*i+3
      l9ans1 = i1mon1 .lt. i1mon2
  117 continue
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
c
      i1mon2 = 150
      i1mon1=100
      if(l9comp)  l9ans1 = i1mon2 .le. i1mon1
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
c
      i1mon2=200
      i1mon1=100
      call   sdab59 ( l9ans1,i1mon2 .ge. i1mon1 )
      l9comp = .true.
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
      do  120  i = 1,3
  120 j = i
      l9ans1 =  1.e0 .ne. r2tab1(1)
          l9comp = .true.
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
      r2tab2(1,1) = 15.e0
      l9ans1 = fdab60 ( .15e+2 .eq. r2tab2(1,1) )
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
c
      l2tab1(1) = .true.
      if( r1mon1 .gt. r2tab2(1,1) )  l2tab1(1) = .false.
      l9comp = .false.
      i9data = i9data + 1
      if((.not.l2tab1(1).and..not.l9comp).or.(l2tab1(1).and.l9comp))go t
     *o 25621
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25821
      write(6,31530)
      write(6,31700) i9data,l2tab1(1),l9comp
      go to 25721
25621 if(i9keyc.eq.1) go to 25821
      write(6,31520)
25721 continue
25821 continue
c
      r2tab3(1,1,1) =  32767.e-1
      do  123  i = 1,1
      j = i
  123 l2tab1(2) = r1mon1 .eq. r2tab3(1,1,1)
      l9comp = .false.
      i9data = i9data + 1
      if((.not.l2tab1(2).and..not.l9comp).or.(l2tab1(2).and.l9comp))go t
     *o 25622
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25822
      write(6,31530)
      write(6,31700) i9data,l2tab1(2),l9comp
      go to 25722
25622 if(i9keyc.eq.1) go to 25822
      write(6,31520)
25722 continue
25822 continue
c
      i1mon1=2
      l9ans1 = r1mon1+r1mon2 .lt. (i1mon1**30-1)*2+1
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
      l9ans1 = r1mon1*r1mon2-1. .ge. (-i1mon1**30+1)*2-1
      l9comp = .true.
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
      r1mon2 = 2.0
      r1mon1 = 5.0
      i1mon1 = 2
      l9ans1 = r1mon2**r1mon1+5.01 .eq. i1mon1**5+5
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
c
      l9ans1 = i1mon2+i1mon1 .ne. 0.123456e+5+10.**r1mon1
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
c
      l9ans1 = i1mon1+18*10 .le. 0.123548e+5*(-10.)-(+10.)**r1mon1
      l9comp = .false.
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
      l9ans1 = i1mon2**i1mon1+1 .gt. -r1mon2**r1mon1-11.
      l9comp = .true.
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
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end

      subroutine sdab59(l9ans1,l1dum1)
      logical       l9ans1 , l1dum1
      l9ans1 = l1dum1
      return
      end

          logical function fdab60 (l1dum1)
          logical   l1dum1
          fdab60 = l1dum1
          return
          end

      integer function funb1 (ix)
      funb1 = 2*ix-ix
          return
          end

      function  funb2 (rx)
      funb2 = 2.0*(rx+1.0)-2.0*rx
          return
          end
