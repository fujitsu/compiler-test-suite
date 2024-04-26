      logical    l9ans1,l9comp
      equivalence     (l9eans,l9ans1),(l9ecom,l9comp)
      logical   l1mon1,l1mon2,l1mon3,l1mon4,l2tab1(4),l2ans1(2)
      logical   fdab43,logfst(2),logrst
      data      logfst/.true.,.false./
      logrst = logfst(1).or.logfst(2)
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
      l2tab1(1) = .true.
      l2tab1(2) = .false.
      l2tab1(3) = .true.
      l2tab1(4) = .false.
      l1mon1 = .true.
      l1mon2 = .false.
      l1mon3 = .true.
      l1mon4 = .false.
      l9ans1 = .false.
      l9ans1 = .false. .or. .true.
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
      l9ans1 = .true.
      l9ans1 = .true. .and. .false.
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
      l9ans1 = .false.
      l9ans1 = .true. .or. l1mon1
      l9comp = .true.
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
      l9ans1 = .false.
      l9ans1 = l1mon1 .or. l1mon3
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
      l9ans1 = .false.
      l9ans1 = l1mon1 .and. l1mon3
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
      l9ans1 = .true.
      l9ans1 = l1mon2 .and. l1mon1
      l9comp = .false.
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
      l9ans1 = .true.
      l9ans1 = l1mon4 .and. l1mon2
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
      l9ans1 = l1mon1 .or. l1mon2
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
      l9ans1 = .true.
      l9ans1 = l1mon4 .or. l1mon2
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
      l9ans1 = l2tab1(2) .and. l2tab1(4)
      l9comp = .false.
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
      l9ans1 = l2tab1(1) .or. l2tab1(3)
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
      l9ans1 = l2tab1(2) .and. l1mon1
      l9comp = .false.
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
      l9ans1 = .false.
      l9ans1 = l2tab1(1) .and. l1mon1
      l9comp = .true.
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
      l9ans1 = .not. l1mon1
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
      l9ans1 = .false.
      l9ans1 = .not. l2tab1(2)
      l9comp = .true.
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
      do  116  i = 7,10
      l9ans1 = l1mon1 .or. l1mon2
  116 continue
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
      if(l1mon1)  l9ans1 = l1mon1 .and. l1mon3
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
      l9ans1 = .false.
      do  118  i = 1,8,5
  118 l9ans1 = .not. l1mon2
      l9comp = .true.
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
      l9ans1 = .false.
      l9ans1 = fdab43 ( .not. l1mon2 )
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
      do  120  i = 3,4
      l2ans1(1) = .false.
  120 continue
      l2ans1(1) = l1mon2 .or. l1mon1
          l9comp=.true.
      i9data = i9data + 1
      if((.not.l2ans1(1).and..not.l9comp).or.(l2ans1(1).and.l9comp))go t
     *o 25619
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25819
      write(6,31530)
      write(6,31700) i9data,l2ans1(1),l9comp
      go to 25719
25619 if(i9keyc.eq.1) go to 25819
      write(6,31520)
25719 continue
25819 continue
c
      l2ans1(1)= .false.
      if( l1mon1.and.l1mon3 )  l2ans1(1)= .true.
      l9comp = .true.
      i9data = i9data + 1
      if((.not.l2ans1(1).and..not.l9comp).or.(l2ans1(1).and.l9comp))go t
     *o 25620
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25820
      write(6,31530)
      write(6,31700) i9data,l2ans1(1),l9comp
      go to 25720
25620 if(i9keyc.eq.1) go to 25820
      write(6,31520)
25720 continue
25820 continue
c
      l2ans1(1) = .true.
      call   sdab44 ( l2ans1,l1mon1.and.l1mon2 )
      l9comp = .false.
      i9data = i9data + 1
      if((.not.l2ans1(1).and..not.l9comp).or.(l2ans1(1).and.l9comp))go t
     *o 25621
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25821
      write(6,31530)
      write(6,31700) i9data,l2ans1(1),l9comp
      go to 25721
25621 if(i9keyc.eq.1) go to 25821
      write(6,31520)
25721 continue
25821 continue
c
      l9ans1 = logrst
      l9comp = .true.
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
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end

      logical function fdab43 (l1dum1)
          logical   l1dum1
          fdab43 = l1dum1
          return
          end

      subroutine sdab44(l2dum1,l1mon1)
      logical    l2dum1(1),l1mon1
      l2dum1(1) = l1mon1
      return
      end
