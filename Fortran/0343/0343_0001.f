      logical    l9ans1,l9comp
      equivalence     (l9eans,l9ans1),(l9ecom,l9comp)
      logical       l8blc1,l1blc1,l2blc1,l2blc2,l2blc3,l8nac1,l1nac1,
     1              l2nac1(2),l2nac2(1),l8act1,l1mon1,
     2              l8equ1,l8equ2,l1equ1,l1equ2
      logical    fdab52,funb0,l2tab1(2),l2tab2(2,5),l2tab3(2,3,4)
     1              ,l2tab4(1,2),l2tab5(3,2,1),l2act1(2,3)
      logical     l1mon2
      common     l8blc1,l1blc1,l2blc1(2,2,2),l2blc2(2,2),l2blc3(1,1,1)
      common    /lcom/l8nac1,l1nac1,l2nac1,l2nac2
      equivalence   ( l8equ1,l8equ2 ) , ( l1equ1,l1equ2 )
c
31500 format(1h0,1x,4h*ok*,4x,1h( ,i3,2h ))
31510 format(1h0,1x,7h*error*,1x,1h( ,i3,2h ))
31520 format(1h0,1x,4h*ok* )
31530 format(1h0,1x,7h*error* )
31550 format( // 19h + justice + item +,15x,19h+ computed result +,
     *       19x,17h+ compare value +,31x,14h+ difference + / )
      l2tab2(2,1)=.false.
      l2act1(1,2)=.false.
      i9keyc=1
      if (i9keyc.eq.0) go to 32010
32000 continue
32010 i9keyc = i9keyc + 1
      i9data=0
      i9errc=0
      i9ans1=0
c
31700 format(1h+,9x,1h( ,i3,2h ),33x,l3,33x,l3 )
      l1blc1 = .true.
      l2blc3(1,1,1) = .true.
      l2tab4(1,1)   = .false.
      l1nac1 = .true.
      l2tab4(1,1)   = .true.
      l2tab5(1,1,1) = .false.
      l1equ1        = .true.
      l9comp        = .true.
      l2nac2(1)=.false.
c
      do  101   i = 10,15,2
      j = i
  101 l8blc1 = .true.
      i9data = i9data + 1
      if((.not.l8blc1.and..not.l9comp).or.(l8blc1.and.l9comp))go to 2560
     *0
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25800
      write(6,31530)
      write(6,31700) i9data,l8blc1,l9comp
      go to 25700
25600 if(i9keyc.eq.1) go to 25800
      write(6,31520)
25700 continue
25800 continue
c
      do  201   i = 2,5,1
      call   sdab52 ( l9ans1 )
  201 j = 2
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
      if( .true. )  l8equ1 = .true.
      l9comp = .true.
      i9data = i9data + 1
      if((.not.l8equ1.and..not.l9comp).or.(l8equ1.and.l9comp))go to 2560
     *2
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25802
      write(6,31530)
      write(6,31700) i9data,l8equ1,l9comp
      go to 25702
25602 if(i9keyc.eq.1) go to 25802
      write(6,31520)
25702 continue
25802 continue
c
      l9ans1 = funb0( l8act1 )
      if( .true. )  l8act1 = .false.
      l9comp = .false.
      i9data = i9data + 1
      if((.not.l8act1.and..not.l9comp).or.(l8act1.and.l9comp))go to 2560
     *3
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25803
      write(6,31530)
      write(6,31700) i9data,l8act1,l9comp
      go to 25703
25603 if(i9keyc.eq.1) go to 25803
      write(6,31520)
25703 continue
25803 continue
c
      if( .true. )   l2nac1(1) = .true.
      l9comp=.true.
      l9comp = .true.
      i9data = i9data + 1
      if((.not.l2nac1(1).and..not.l9comp).or.(l2nac1(1).and.l9comp))go t
     *o 25604
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25804
      write(6,31530)
      write(6,31700) i9data,l2nac1(1),l9comp
      go to 25704
25604 if(i9keyc.eq.1) go to 25804
      write(6,31520)
25704 continue
25804 continue
c
      call   sdab53 ( l2tab2,2 )
      do  202   i = 1,3
  202 l8blc1 = i.eq.3
      l9comp = .false.
      i9data = i9data + 1
      if((.not.l2tab2(2,2).and..not.l9comp).or.(l2tab2(2,2).and.l9comp))
     *go to 25605
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25805
      write(6,31530)
      write(6,31700) i9data,l2tab2(2,2),l9comp
      go to 25705
25605 if(i9keyc.eq.1) go to 25805
      write(6,31520)
25705 continue
25805 continue
c
      do  203   i = 5,7
  203 j = 7
      call   sdab54 ( l2tab2(2,1) )
      l9ans1=l2tab2(2,1)
      l9comp = .true.
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
      do  204   i = 15,20,5
      l2tab3(2,1,2) = .true.
  204 j = i + 5
          l2tab3(2,1,2) = fdab52(l2tab3)
      l9comp = .false.
      i9data = i9data + 1
      if((.not.l2tab3(2,1,2).and..not.l9comp).or.(l2tab3(2,1,2).and.l9co
     *mp))go to 25607
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25807
      write(6,31530)
      write(6,31700) i9data,l2tab3(2,1,2),l9comp
      go to 25707
25607 if(i9keyc.eq.1) go to 25807
      write(6,31520)
25707 continue
25807 continue
c
      do  109   i = 1,3
  109 j = j + 1
      l2blc1(1,2,1) = .true.
      l9comp = .true.
      i9data = i9data + 1
      if((.not.l2blc1(1,2,1).and..not.l9comp).or.(l2blc1(1,2,1).and.l9co
     *mp))go to 25608
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25808
      write(6,31530)
      write(6,31700) i9data,l2blc1(1,2,1),l9comp
      go to 25708
25608 if(i9keyc.eq.1) go to 25808
      write(6,31520)
25708 continue
25808 continue
c
      read(5,999)  l2tab3(2,3,4)
  999 format(l1)
      l8nac1 = l2tab3(2,3,4)
  110 continue
      l9comp = .false.
      i9data = i9data + 1
      if((.not.l8nac1.and..not.l9comp).or.(l8nac1.and.l9comp))go to 2560
     *9
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25809
      write(6,31530)
      write(6,31700) i9data,l8nac1,l9comp
      go to 25709
25609 if(i9keyc.eq.1) go to 25809
      write(6,31520)
25709 continue
25809 continue
c
      read(5,999)  l1mon1
      do  111   i = 2,2,1
      l9ans1 = funb0 ( l2act1(1,2) )
      l2act1(1,2) = l1mon1
  111 continue
      l9comp = .true.
      i9data = i9data + 1
      if((.not.l2act1(1,2).and..not.l9comp).or.(l2act1(1,2).and.l9comp))
     *go to 25610
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25810
      write(6,31530)
      write(6,31700) i9data,l2act1(1,2),l9comp
      go to 25710
25610 if(i9keyc.eq.1) go to 25810
      write(6,31520)
25710 continue
25810 continue
c
      read(5,999)  l1mon2
      do  112   i = 3,5,2
      l2blc2(2,1) = l1mon2
  112 continue
      l9comp = .false.
      i9data = i9data + 1
      if((.not.l2blc2(2,1).and..not.l9comp).or.(l2blc2(2,1).and.l9comp))
     *go to 25611
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25811
      write(6,31530)
      write(6,31700) i9data,l2blc2(2,1),l9comp
      go to 25711
25611 if(i9keyc.eq.1) go to 25811
      write(6,31520)
25711 continue
25811 continue
c
      read(5,999)  l2tab1(1)
      do  113   i = 7,10
  113 j = i
      l8blc1 = l2tab1(1)
      l9comp = .true.
      i9data = i9data + 1
      if((.not.l8blc1.and..not.l9comp).or.(l8blc1.and.l9comp))go to 2561
     *2
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25812
      write(6,31530)
      write(6,31700) i9data,l8blc1,l9comp
      go to 25712
25612 if(i9keyc.eq.1) go to 25812
      write(6,31520)
25712 continue
25812 continue
c
      do  114   i = 1,10,5
  114 j = i + 10
      l8equ2 = l1mon2
      l9comp = .false.
      i9data = i9data + 1
      if((.not.l8equ1.and..not.l9comp).or.(l8equ1.and.l9comp))go to 2561
     *3
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25813
      write(6,31530)
      write(6,31700) i9data,l8equ1,l9comp
      go to 25713
25613 if(i9keyc.eq.1) go to 25813
      write(6,31520)
25713 continue
25813 continue
c
      call   sdab55( l8act1 )
      l9comp = .true.
      i9data = i9data + 1
      if((.not.l8act1.and..not.l9comp).or.(l8act1.and.l9comp))go to 2561
     *4
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25814
      write(6,31530)
      write(6,31700) i9data,l8act1,l9comp
      go to 25714
25614 if(i9keyc.eq.1) go to 25814
      write(6,31520)
25714 continue
25814 continue
      if(i9keyc.eq.1) go to 25900
25900 continue
c
      do  116  i = 1,1
  116 j = i
      l2nac1(1) = l1mon2
      l9comp = .false.
      i9data = i9data + 1
      if((.not.l2nac1(1).and..not.l9comp).or.(l2nac1(1).and.l9comp))go t
     *o 25615
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25815
      write(6,31530)
      write(6,31700) i9data,l2nac1(1),l9comp
      go to 25715
25615 if(i9keyc.eq.1) go to 25815
      write(6,31520)
25715 continue
25815 continue
c
      do  117   i = 3,4,1
  117     j = 2*i+1
      l2nac1(2) = l2tab3(2,3,4)
          l9comp  = .false.
      i9data = i9data + 1
      if((.not.l2nac1(2).and..not.l9comp).or.(l2nac1(2).and.l9comp))go t
     *o 25616
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25816
      write(6,31530)
      write(6,31700) i9data,l2nac1(2),l9comp
      go to 25716
25616 if(i9keyc.eq.1) go to 25816
      write(6,31520)
25716 continue
25816 continue
c
      call   sdab56 (l2tab1,1)
      l9comp = .false.
      i9data = i9data + 1
      if((.not.l2tab1(1).and..not.l9comp).or.(l2tab1(1).and.l9comp))go t
     *o 25617
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25817
      write(6,31530)
      write(6,31700) i9data,l2tab1(1),l9comp
      go to 25717
25617 if(i9keyc.eq.1) go to 25817
      write(6,31520)
25717 continue
25817 continue
c
      l9ans1 = l1blc1
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
      l1equ1 = .false.
      l9ans1 = l1equ1
          l9comp  = .false.
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
      l9ans1 = l2nac2(1)
          l9comp  = .false.
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
      call   sdab57 ( l9ans1,l2tab4,1 )
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
c
      call   sdab58 ( l2tab1,l2tab5 )
          l9comp  = .true.
      i9data = i9data + 1
      if((.not.l2tab1(1).and..not.l9comp).or.(l2tab1(1).and.l9comp))go t
     *o 25622
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25822
      write(6,31530)
      write(6,31700) i9data,l2tab1(1),l9comp
      go to 25722
25622 if(i9keyc.eq.1) go to 25822
      write(6,31520)
25722 continue
25822 continue
c
      l2tab1(1) = l2blc3(1,1,1)
      l9comp = .true.
      i9data = i9data + 1
      if((.not.l2tab1(1).and..not.l9comp).or.(l2tab1(1).and.l9comp))go t
     *o 25623
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25823
      write(6,31530)
      write(6,31700) i9data,l2tab1(1),l9comp
      go to 25723
25623 if(i9keyc.eq.1) go to 25823
      write(6,31520)
25723 continue
25823 continue
c
      l1equ2 = .false.
      l2tab1(1) = l1equ2
      l9comp = .false.
      i9data = i9data + 1
      if((.not.l2tab1(1).and..not.l9comp).or.(l2tab1(1).and.l9comp))go t
     *o 25624
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25824
      write(6,31530)
      write(6,31700) i9data,l2tab1(1),l9comp
      go to 25724
25624 if(i9keyc.eq.1) go to 25824
      write(6,31520)
25724 continue
25824 continue
c
      l2tab1(1) = l1nac1
      l9comp = .true.
      i9data = i9data + 1
      if((.not.l2tab1(1).and..not.l9comp).or.(l2tab1(1).and.l9comp))go t
     *o 25625
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25825
      write(6,31530)
      write(6,31700) i9data,l2tab1(1),l9comp
      go to 25725
25625 if(i9keyc.eq.1) go to 25825
      write(6,31520)
25725 continue
25825 continue
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end

      logical function fdab52 (l2dum1)
      logical       l2dum1(2,3,4)
      fdab52 = .true.
      do  100  i = 1,1
  100 j = i+1
      if( l2dum1(2,1,2) ) fdab52 = .false.
      return
      end

      logical function funb0 (lx)
      logical       lx
      funb0   = .true.
      return
      end

      subroutine sdab53(l2dum1,n)
      logical       l2dum1(n,n)
      do  100  i = 1,1
  100     nn = i
      i=1
      l2dum1(i+1,i+1)=.false.
      return
      end

      subroutine sdab54(l1dum1)
      logical       l1dum1
      l1dum1 = .true.
      return
      end

      subroutine sdab55(l1dum1)
      logical       l1dum1,l2tab1(2,2)
      read(5,999)  l2tab1(2,2)
  999 format(l1)
      do  115  i = 1,1
  115 j = i
      l1dum1 = l2tab1(2,2)
      return
      end

      subroutine sdab56(l2adj1,n)
      logical       l1mon1,l2adj1(n)
      read(5,999)   l1mon1
  999 format(l1)
      do  118  i = 1,1
  118 j = i
      l2adj1(1) = l1mon1
      return
      end

      subroutine sdab57(l9ans1,l2adj1,n)
      logical       l9ans1,l2adj1(n,n)
      l9ans1 = l2adj1(1,1)
      return
      end

      subroutine sdab58(l2tab1,l2dum1)
      logical       l2tab1(2),l2dum1(1,1)
      l2tab1(1) = .not.l2dum1(1,1)
      return
      end

      subroutine sdab52(l9ans1)
          logical   l9ans1
      l9ans1 = .false.
          return
          end
