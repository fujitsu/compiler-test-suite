      logical     l42
      logical    l9ans1,l9comp
      equivalence     (l9eans,l9ans1),(l9ecom,l9comp)
      logical  ufub01,ufub02,ufub03,ufub04,ufub05,ufub06,ufub07,
     1               ufub08,ufub09,ufub10,ufub11,ufub12,ufub13,ufub14,
     2               ufub15,ufub20
         logical    l1val1,l1val2,l40,l41
         ufub01(i4) = 11114+i4.eq.i4+11114
      ufub02(i40,i41)=i40+i1val1*i1val2.ne.i41+i40-i1val1
         ufub03(r40,r41) = r40-11815.0.gt.r41*r1val1+r40
         ufub04(i40,i41) = 2*i40+i41+0+113*i1val1.le.i40/i41+i1val1
         ufub05(i40,i41) =i40+i41*i40/i40-i41+i41 .ge. i40-i40+i40-i40
     1                                                 +i41-i41
      ufub06(l40) = l40.or..false.
         ufub07(l40,l41) = l40.and.l40.or.l41.and.l41.and.l41.and.l41
     1                   .and.l1val2.and..true.
         ufub08(l40,l41) = .not.l40.neqv..not.l41.neqv..not.l40.neqv.l41
     1                   .and.l1val2.and.l1val1.and.l40
      ufub09(i40,l40)=(3*2/8+2+1+33332.ne.15/3*110).neqv.(1*2.eq.i40)
     1                     .neqv.l40.and.l40.and..true.
         ufub10(i40,l40) = (i40+i40+i40-i40-i40.eq.1).and.(i40+i40.eq.1)
     1         .and.(i40+i40+i40-i40-i40.gt.1).or.(i40+i40.eq.
     2                   1).and..not.l40.and.l40
         ufub11(i40,i41,l41,l42)=(i40+i41.eq.2).and.l41.and.l42.and.
     1                           (i40.eq.i41)
         ufub12(r40,r41,l40,l41)=(r40+r40+r40+r40-r41-r41-r41-r41.eq.1.
     1                             0).and.(l40.and.l41)
         ufub13(i40,i41,l40,l41)=(i40.eq.i41).and.l40.and.l41
         ufub14(r40,r41,l40,l41)=((r40+22852.0.eq.r41).or.(r41-712.5
     1        .lt.r40*22.5).and.((2250.3.le.r41+8.0).or..not.(l40.neqv.
     2        l41)).and.((2250.0.le.35.0*r40).or.(r40.ne.r41).or.l40))
         ufub15(i40,i41,l40,l41)=((i40+1173.eq.i41).or.(i41-712.lt.i40
     1        *22).and.(2250.le.i41-15).and..not.(l40.neqv.l41).and.
     2        (2250.le.18*i40).or.(i40.ne.i41).or.(15*i40.gt.i41-7250))
     3        .or.((15*i40.eq.15*i41).and.(19*i41.ne.i40**2).and.
     4        (l40.and.l40))
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
         l9comp=.true.
         i1val1 = 15
         i1val2 = 15
         r1val1 = 4.0
         r1val2 = 4.0
         l1val1=.true.
         l1val2=.true.
c
         l9ans1= ufub01(i1val1)
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
         l9ans1= ufub02(i1val1,i1val2)
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
         l9ans1= ufub03(r1val1,r1val2)
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
         l9ans1= ufub04(i1val1,i1val2)
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
         l9ans1= ufub05(i1val1,i1val2)
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
          l9ans1= ufub06(.false.)
          l9comp= .false.
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
         l9ans1= ufub07(l1val1,l1val2)
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
         l9ans1= ufub08(l1val1,l1val2)
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
          l9ans1= ufub09(i1val1,l1val1)
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
         l9ans1= ufub10(i1val1,l1val1)
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
         l9ans1= ufub11(i1val1,i1val2,l1val1,l1val2)
          l9comp= .false.
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
         l9ans1= ufub12(r1val1,r1val2,l1val1,l1val2)
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
         l9ans1= ufub13(i1val1,i1val2,l1val1,l1val2)
         l9comp=.true.
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
         l9ans1= ufub14(r1val1,r1val2,l1val1,l1val2)
         l9comp= .true.
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
         l9ans1= ufub15(i1val1,i1val2,l1val1,l1val2)
         l9comp= .true.
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
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
