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
      logical  lsw

          dimension  i01(3),r02(4),l03(5)
     1              ,i04(2,3),r05(3,4),l06(4,2)
          common     i01,r02,l03,i04,r05,l06

          common     i07(6),r08(7),l09(8)
     1              ,i10(3,2),r11(4,3),l12(2,4)

          common     i21,i22,i23,i24,i25,i13
          common     r21,r22,r23,r24,r14,r25
          common     l15,l21,l22,l23,l24,l25

          common     i31,r32,i33,r34,i35,i16,r36,i37,r38,i39
     1              ,r31,i32,r33,i34,r35,i36,r37,r16,i38,r39
          common     l41,i42,l43,i17,l17,i44,l45,i46,i47,i48
     1             , i41,l42,i43,l44,i45,l46,l47,l48,l49,i49
          common     r51,r52,l53,r54,r18,l55,l56,l57,r58,r59
     1             , l51,l52,r53,l54,r55,r56,r57,l58,l59,l18
          common     i19,r19,l19,r61,r62,i63,i64,l65,l66,l67
     1             , i68,i69,i61,l62,r63,r64,r65,i66,i67,l68
          logical    l03,l06,l09,l12,l15,l17,l18,l19,l21,l22,l23,l24
     1              ,l25,l41,l42,l43,l44,l45,l46,l47,l48,l49,l51,l52
     2              ,l53,l54,l55,l56,l57,l58,l59,l62,l65,l66,l67,l68
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
31700 format(1h+,9x,1h( ,i3,2h ),33x,l3,33x,l3 )
c
          j = 2
          i01(2*j-1) = 1001
          i9comp     = 1001
      i9data = i9data + 1
      if (iabs(i01(3)-i9comp).eq.0) go to 23300
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23500
      write(6,31530)
      write(6,31600) i9data,i01(3),i9comp
      go to 23400
23300 if( i9keyc.eq.1 ) go to 23500
      write(6,31520)
23400 continue
23500 i9ans1=0
c
          j = 0
          r02(5*j+2) = 2.125
          r9comp     = 2.125
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23650
      r9dif3 = abs(( r02(2) - r9comp )/r9comp)
23600 if(r9dif3 - 5.0e-6)                23700,23700,23750
23650 r9dif3 = abs(r02(2))
      go to 23600
23700 if( i9keyc.eq.1) go to 23850
      write(6,31520)
      go to 23800
23750 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23850
      write(6,31530)
      write(6,31610) i9data,r02(2),r9comp,r9dif3
23800 continue
23850 r9ans1 = 0.0e00
c
          l03(1) = .true.
          l9comp = .true.
      i9data = i9data + 1
      if((.not.l03(1).and..not.l9comp).or.(l03(1).and.l9comp))go to 2560
     *0
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25800
      write(6,31530)
      write(6,31700) i9data,l03(1),l9comp
      go to 25700
25600 if(i9keyc.eq.1) go to 25800
      write(6,31520)
25700 continue
25800 continue
c
          i04(1,1) = 4
          i9comp   = 4
      i9data = i9data + 1
      if (iabs(i04(1,1)-i9comp).eq.0) go to 23301
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23501
      write(6,31530)
      write(6,31600) i9data,i04(1,1),i9comp
      go to 23401
23301 if( i9keyc.eq.1 ) go to 23501
      write(6,31520)
23401 continue
23501 i9ans1=0
c
          j = -1
          k =  3
          r05(j+3,2*k-3) = 5.25
          r9comp         = 5.25
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23651
      r9dif3 = abs(( r05(2,3) - r9comp )/r9comp)
23601 if(r9dif3 - 5.0e-6)                23701,23701,23751
23651 r9dif3 = abs(r05(2,3))
      go to 23601
23701 if( i9keyc.eq.1) go to 23851
      write(6,31520)
      go to 23801
23751 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23851
      write(6,31530)
      write(6,31610) i9data,r05(2,3),r9comp,r9dif3
23801 continue
23851 r9ans1 = 0.0e00
c
          l06(1,1) = .false.
          l9comp   = .false.
      i9data = i9data + 1
      if((.not.l06(1,1).and..not.l9comp).or.(l06(1,1).and.l9comp))go to
     *25601
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25801
      write(6,31530)
      write(6,31700) i9data,l06(1,1),l9comp
      go to 25701
25601 if(i9keyc.eq.1) go to 25801
      write(6,31520)
25701 continue
25801 continue
c
          i07(6) = 7891
          i9comp = 7891
      i9data = i9data + 1
      if (iabs(i07(6)-i9comp).eq.0) go to 23302
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23502
      write(6,31530)
      write(6,31600) i9data,i07(6),i9comp
      go to 23402
23302 if( i9keyc.eq.1 ) go to 23502
      write(6,31520)
23402 continue
23502 i9ans1=0
c
          r08(1) = 8.
          r9comp = 8.
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23652
      r9dif3 = abs(( r08(1) - r9comp )/r9comp)
23602 if(r9dif3 - 5.0e-6)                23702,23702,23752
23652 r9dif3 = abs(r08(1))
      go to 23602
23702 if( i9keyc.eq.1) go to 23852
      write(6,31520)
      go to 23802
23752 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23852
      write(6,31530)
      write(6,31610) i9data,r08(1),r9comp,r9dif3
23802 continue
23852 r9ans1 = 0.0e00
c
          j = 9
          l09(j-1) = .true.
          l9comp   = .true.
      i9data = i9data + 1
      if((.not.l09(8).and..not.l9comp).or.(l09(8).and.l9comp))go to 2560
     *2
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25802
      write(6,31530)
      write(6,31700) i9data,l09(8),l9comp
      go to 25702
25602 if(i9keyc.eq.1) go to 25802
      write(6,31520)
25702 continue
25802 continue
c
          j = -2
          k = 10
          i10(j+3,k-8) = 32767
          i9comp       = 32767
      i9data = i9data + 1
      if (iabs(i10(1,2)-i9comp).eq.0) go to 23303
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23503
      write(6,31530)
      write(6,31600) i9data,i10(1,2),i9comp
      go to 23403
23303 if( i9keyc.eq.1 ) go to 23503
      write(6,31520)
23403 continue
23503 i9ans1=0
c
          r11(1,1) = 1.1e01
          r9comp   = 1.1e01
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23653
      r9dif3 = abs(( r11(1,1) - r9comp )/r9comp)
23603 if(r9dif3 - 5.0e-6)                23703,23703,23753
23653 r9dif3 = abs(r11(1,1))
      go to 23603
23703 if( i9keyc.eq.1) go to 23853
      write(6,31520)
      go to 23803
23753 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23853
      write(6,31530)
      write(6,31610) i9data,r11(1,1),r9comp,r9dif3
23803 continue
23853 r9ans1 = 0.0e00
c
          l12(1,4) = .false.
          l9comp   = .false.
      i9data = i9data + 1
      if((.not.l12(1,4).and..not.l9comp).or.(l12(1,4).and.l9comp))go to
     *25603
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25803
      write(6,31530)
      write(6,31700) i9data,l12(1,4),l9comp
      go to 25703
25603 if(i9keyc.eq.1) go to 25803
      write(6,31520)
25703 continue
25803 continue
c
          isw    = 10
          write(1)  isw
          backspace 1
          read(1)   i13
          i13    = i13+3
          i9comp = 13
      i9data = i9data + 1
      if (iabs(i13-i9comp).eq.0) go to 23304
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23504
      write(6,31530)
      write(6,31600) i9data,i13,i9comp
      go to 23404
23304 if( i9keyc.eq.1 ) go to 23504
      write(6,31520)
23404 continue
23504 i9ans1=0
c
          rsw    = 1.4
          write(1)  rsw
          backspace 1
          read(1)   r14
          r14    = r14*10.
          r9comp = 14.
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23654
      r9dif3 = abs(( r14 - r9comp )/r9comp)
23604 if(r9dif3 - 5.0e-6)                23704,23704,23754
23654 r9dif3 = abs(r14)
      go to 23604
23704 if( i9keyc.eq.1) go to 23854
      write(6,31520)
      go to 23804
23754 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23854
      write(6,31530)
      write(6,31610) i9data,r14,r9comp,r9dif3
23804 continue
23854 r9ans1 = 0.0e00
c
          lsw    = .true.
          write(1)  lsw
          backspace 1
          read(1)   l15
          l15    = .not.l15
          l9comp = .false.
      i9data = i9data + 1
      if((.not.l15.and..not.l9comp).or.(l15.and.l9comp))go to 25604
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25804
      write(6,31530)
      write(6,31700) i9data,l15,l9comp
      go to 25704
25604 if(i9keyc.eq.1) go to 25804
      write(6,31520)
25704 continue
25804 continue
c
          isw    = 5
          write(1)  isw
          backspace 1
          read(1)   i16
          rsw    = 3.2
          write(1)  rsw
          backspace 1
          read(1)   r16
          r16    = i16*r16
          r9comp = 16.
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23655
      r9dif3 = abs(( r16 - r9comp )/r9comp)
23605 if(r9dif3 - 5.0e-6)                23705,23705,23755
23655 r9dif3 = abs(r16)
      go to 23605
23705 if( i9keyc.eq.1) go to 23855
      write(6,31520)
      go to 23805
23755 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23855
      write(6,31530)
      write(6,31610) i9data,r16,r9comp,r9dif3
23805 continue
23855 r9ans1 = 0.0e00
c
          isw    = 17
          write(1)  isw
          backspace 1
          read(1)   i17
          lsw    = .false.
          write(1)  lsw
          backspace 1
          read(1)   l17
          l17    = l17.or.i17.eq.17
          l9comp = .true.
      i9data = i9data + 1
      if((.not.l17.and..not.l9comp).or.(l17.and.l9comp))go to 25605
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25805
      write(6,31530)
      write(6,31700) i9data,l17,l9comp
      go to 25705
25605 if(i9keyc.eq.1) go to 25805
      write(6,31520)
25705 continue
25805 continue
c
          rsw    = 1.8
          write(1)  rsw
          backspace 1
          read(1)   r18
          lsw    = .true.
          write(1)  lsw
          backspace 1
          read(1)   l18
          l18=l18.and. r18.eq.rsw
          l9comp = .true.
      i9data = i9data + 1
      if((.not.l18.and..not.l9comp).or.(l18.and.l9comp))go to 25606
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25806
      write(6,31530)
      write(6,31700) i9data,l18,l9comp
      go to 25706
25606 if(i9keyc.eq.1) go to 25806
      write(6,31520)
25706 continue
25806 continue
c
          isw    = 2
          write(1)  isw
          backspace 1
          read(1)   i19
          rsw    = 9.5
          write(1)  rsw
          backspace 1
          read(1)   r19
          lsw    = .false.
          write(1)  lsw
          backspace 1
          read(1)   l19
          i19    = i19*r19
          l19    = i19.eq.19.and..not.l19
          l9comp = .true.
      i9data = i9data + 1
      if((.not.l19.and..not.l9comp).or.(l19.and.l9comp))go to 25607
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25807
      write(6,31530)
      write(6,31700) i9data,l19,l9comp
      go to 25707
25607 if(i9keyc.eq.1) go to 25807
      write(6,31520)
25707 continue
25807 continue
c
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
