      real       r9ans1,r9comp,r9dif1,r9dif2,r9dif3
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
31610 format(1h+,9x,1h(, i3, 2h ),21x,e15.8,21x,e15.8,30x,e15.8 )
c
          read (5,*) r9ans1
          r9comp = +3908e-08
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
          read (5,*) r9ans1
          r9comp = +4101e+13
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
          read (5,*) r9ans1
          r9comp = +2584e00
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
          read (5,*) r9ans1
          r9comp = +4250e00
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
          read (5,*) r9ans1
          r9comp = -2744.
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
          read (5,*) r9ans1
          r9comp = -6139e-04
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
          read (5,*) r9ans1
          r9comp = -3383.e+20
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
          read (5,*) r9ans1
          r9comp = -9372.e00
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
          read (5,*) r9ans1
          r9comp = 5.3
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23658
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23608 if(r9dif3 - 5.0e-6)                23708,23708,23758
23658 r9dif3 = abs(r9ans1)
      go to 23608
23708 if( i9keyc.eq.1) go to 23858
      write(6,31520)
      go to 23808
23758 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23858
      write(6,31530)
      write(6,31610) i9data,r9ans1,r9comp,r9dif3
23808 continue
23858 r9ans1 = 0.0e00
c
          read (5,*) r9ans1
          r9comp = 6.49e-6
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23659
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23609 if(r9dif3 - 5.0e-6)                23709,23709,23759
23659 r9dif3 = abs(r9ans1)
      go to 23609
23709 if( i9keyc.eq.1) go to 23859
      write(6,31520)
      go to 23809
23759 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23859
      write(6,31530)
      write(6,31610) i9data,r9ans1,r9comp,r9dif3
23809 continue
23859 r9ans1 = 0.0e00
c
          read (5,*) r9ans1
          r9comp = 982.1e+10
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23660
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23610 if(r9dif3 - 5.0e-6)                23710,23710,23760
23660 r9dif3 = abs(r9ans1)
      go to 23610
23710 if( i9keyc.eq.1) go to 23860
      write(6,31520)
      go to 23810
23760 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23860
      write(6,31530)
      write(6,31610) i9data,r9ans1,r9comp,r9dif3
23810 continue
23860 r9ans1 = 0.0e00
c
          read (5,*) r9ans1
          r9comp = 9.648e00
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23661
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23611 if(r9dif3 - 5.0e-6)                23711,23711,23761
23661 r9dif3 = abs(r9ans1)
      go to 23611
23711 if( i9keyc.eq.1) go to 23861
      write(6,31520)
      go to 23811
23761 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23861
      write(6,31530)
      write(6,31610) i9data,r9ans1,r9comp,r9dif3
23811 continue
23861 r9ans1 = 0.0e00
c
          read (5,*) r9ans1
          r9comp = 40.04e8
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23662
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23612 if(r9dif3 - 5.0e-6)                23712,23712,23762
23662 r9dif3 = abs(r9ans1)
      go to 23612
23712 if( i9keyc.eq.1) go to 23862
      write(6,31520)
      go to 23812
23762 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23862
      write(6,31530)
      write(6,31610) i9data,r9ans1,r9comp,r9dif3
23812 continue
23862 r9ans1 = 0.0e00
c
          read (5,*) r9ans1
          r9comp = +.2310
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23663
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23613 if(r9dif3 - 5.0e-6)                23713,23713,23763
23663 r9dif3 = abs(r9ans1)
      go to 23613
23713 if( i9keyc.eq.1) go to 23863
      write(6,31520)
      go to 23813
23763 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23863
      write(6,31530)
      write(6,31610) i9data,r9ans1,r9comp,r9dif3
23813 continue
23863 r9ans1 = 0.0e00
c
          read (5,*) r9ans1
          r9comp = +.2278e+10
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23664
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23614 if(r9dif3 - 5.0e-6)                23714,23714,23764
23664 r9dif3 = abs(r9ans1)
      go to 23614
23714 if( i9keyc.eq.1) go to 23864
      write(6,31520)
      go to 23814
23764 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23864
      write(6,31530)
      write(6,31610) i9data,r9ans1,r9comp,r9dif3
23814 continue
23864 r9ans1 = 0.0e00
      if(i9keyc.eq.1) go to 25900
25900 continue
c
          read (5,*) r9ans1
          r9comp = +.4144e8
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23665
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23615 if(r9dif3 - 5.0e-6)                23715,23715,23765
23665 r9dif3 = abs(r9ans1)
      go to 23615
23715 if( i9keyc.eq.1) go to 23865
      write(6,31520)
      go to 23815
23765 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23865
      write(6,31530)
      write(6,31610) i9data,r9ans1,r9comp,r9dif3
23815 continue
23865 r9ans1 = 0.0e00
c
          read (5,*) r9ans1
          r9comp = +.76e-7
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23666
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23616 if(r9dif3 - 5.0e-6)                23716,23716,23766
23666 r9dif3 = abs(r9ans1)
      go to 23616
23716 if( i9keyc.eq.1) go to 23866
      write(6,31520)
      go to 23816
23766 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23866
      write(6,31530)
      write(6,31610) i9data,r9ans1,r9comp,r9dif3
23816 continue
23866 r9ans1 = 0.0e00
c
          read (5,*) r9ans1
          r9comp = +.7958e00
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23667
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23617 if(r9dif3 - 5.0e-6)                23717,23717,23767
23667 r9dif3 = abs(r9ans1)
      go to 23617
23717 if( i9keyc.eq.1) go to 23867
      write(6,31520)
      go to 23817
23767 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23867
      write(6,31530)
      write(6,31610) i9data,r9ans1,r9comp,r9dif3
23817 continue
23867 r9ans1 = 0.0e00
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
