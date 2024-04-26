      logical    l9ans1,l9comp
      equivalence     (l9eans,l9ans1),(l9ecom,l9comp)
      logical       l2blc1(2,2),l2blc2(2,3,4),l2nac1(2),l2equ1(2),
     1              l2tab1(2,2),l2tab3(3),l2equi(2),l2tab2(2,2,2)
      common        l2blc1,l2blc2,i1blc1
     1          /ab/l2nac1,i1nac1
      equivalence  (l2equ1(1),l2equi(1)),(i1equ1,i1equ2)
      data          l2equ1,l2tab1,l2tab2,l2tab3,l9comp/18*.true./
      data          i,j/1,2/
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
      do  100  i1 = 1,2
      l2nac1(i1) = .true.
      do  100  i2 = 1,2
      l2blc1(i1,i2) = .true.
      do  100  i3 = 1,2
      l2blc2(i1,i2,i3) = .true.
  100 continue
      l2nac1(1) = .false.
      l9ans1 = l2nac1(1)
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
      l2equi(2) = .true.
      i = 2
      l9ans1 = l2equ1(i)
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
      l2equi(2) = .false.
      i = 1
      l9ans1 = l2equ1(i+1)
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
      l2blc1(2,2) = .true.
      i = 1
      j = 2
      l9ans1 = l2blc1(2*i,1*j)
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
      l2tab1(2,1) = .false.
      j = 2
      call   sdab45 ( l9ans1,l2tab1,1,j )
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
      l2tab1(2,1) = .true.
      call   sdab46 ( l9ans1,l2tab1,2,1 )
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
      l2tab1(2,2) = .false.
      i = 1
      call   sdab47 ( l9ans1,l2tab1(2*i,2) )
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
      l2tab1(1,1) = .true.
      j = 2
      call   sdab47 ( l9ans1,l2tab1(j-1,1) )
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
      l2tab2(1,2,2) = .false.
      j = 4
      call  sdab48(l9ans1,l2tab2)
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
      i = 1
      j = 2
      call   sdab49 ( l9ans1,l2tab2 )
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
      l2blc2(1,2,2) = .false.
      l9ans1 = l2blc2(1,2,2)
      l9comp = .false.
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
      l2blc2(1,3,4) = .true.
      i = 2
      j = 1
      l9ans1 = l2blc2(1,2*j+1,1*i+2)
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
      do  113   i = 2,2
      l2tab3(i) = .false.
      i1nac1 = i
  113 l9ans1 = l2tab3(i1nac1)
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
      l2tab3(1) = .true.
      l2tab3(3) = .true.
      do  114  i1con1 = 1,3,2
      i = j + 1
      l9ans1 = l9ans1 .and. l2tab3(1*i1con1)
  114 j = i
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
      l2tab3(3) = .false.
      do  115  i1con1 = 1,5,5
      j = i + i1con1
      l9ans1 = l2tab3(2*i1con1+1)
  115 i = 2 * j + i1con1
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
      l2tab3(2) = .true.
      do  116  i = 7,15
      i1blc1 = 1
      j = i + i1blc1
      l9ans1 = l2tab3(1*i1blc1+1)
      l9comp = .true.
  116 continue
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
      do  117  i = 5,7
      l2tab3(2) = .false.
  117 j = i
      i1act1 = j
      call   sdab50 ( i1act1 )
      l9ans1 = l2tab3( i1act1+1 )
      l9comp = .false.
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
      do  118  i = 17,20
      l2tab3(2) = .true.
          i1equ1 = i - 16
  118 continue
          l9ans1 = l2tab3( i1equ2 - 2 )
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
      do  119  i = 1,1
      l2tab3(2) = .false.
  119 i1equ2 = i
      l9ans1 = l2tab3(1*i1equ1+1)
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
c
      l9ans1 = .true.
      l2tab3(3) = .false.
      read(5,200)   i1red1
  200 format(i1)
      if(l9ans1)  l9ans1 = l2tab3(i1red1)
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
c
      l2tab3(3) = .true.
      read(5,200)   i1red1
      if(.true.)  l9ans1 = l2tab3(i1red1+1)
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
      l9ans1 = .true.
      l2tab3(2) = .false.
      read(5,200)   i1red1
      if(l9ans1)  l9ans1 = l2tab3(2*i1red1-8)
      l9comp = .false.
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
      l9ans1 = .true.
      l2tab3(2) = .false.
      call   sdab51 ( l9ans1,l2tab3,1 )
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
      l9comp = .true.
      i      = 1
      j      = 2
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end

      subroutine sdab45(l9ans1,l2tab1,n,m)
      logical       l9ans1 , l2tab1(n,m)
      i = 1
      l9ans1 = l2tab1(i,2)
      return
      end

      subroutine sdab46(l9ans1,l2tab1,n,m)
      logical       l9ans1 , l2tab1(n,m)
      i = 1
      l9ans1 = l2tab1(1*i+1,1)
      return
      end

      subroutine sdab47(l9ans1,l1mon1)
      logical       l9ans1 , l1mon1
      l9ans1 = l1mon1
      return
      end

      subroutine sdab48(l9ans1,l2tab2)
      logical       l9ans1 , l2tab2(2,2,2)
      j = 4
      l9ans1 = l2tab2(1,2*j-6,2)
      return
      end

      subroutine sdab49(l9ans1,l2tab2)
      logical       l9ans1,l2tab2(2,2,2)
      i = 1
      j = 2
      l9ans1 = l2tab2(2,i,j)
      return
      end

      subroutine sdab50(i1act1)
      i1act1 = 1
      return
      end

      subroutine sdab51(l9ans1,l2tab3,i1dum1)
      logical       l9ans1,l2tab3(3)
      if(l9ans1)  l9ans1 = l2tab3(1*i1dum1+1)
      return
      end
