          logical   ldim11,ldim12,ldim31,ldim32,lval1
          logical ffbb1,ffbb3,ffbb4,ffbb5,uffb
          integer uffa,ffbb2
      logical    l9ans1,l9comp
      equivalence     (l9eans,l9ans1),(l9ecom,l9comp)
          dimension ldim11(20),ldim12(30)
          dimension ldim31(2,5,2),ldim32(5,2,2)
          dimension idim11(10)
          dimension rdim11(10)
          data      ldim11/ 5*.true.,5*.false.,8*.true.,2*.false./
          data      ldim12/ 7*.false.,3*.true.,10*.false.,10*.true./
          data      ldim31/ 4*.false.,4*.true.,8*.false.,4*.true./
          data      ldim32/ 6*.false.,9*.true.,5*.false./
          data      idim11/6*0,113,252,999,50/
          data      rdim11/2*0.,2.828,3.141,199.9,5*0./
          uffa(k1,k2,k3) = k1+k2+k3
          uffb(a,m1,m2)  = ffbb5(567.8+a,13+m1,13+m1+m2).and..true.
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
          lval1 =.false.
          l9ans1 = ffbb1(.true.,lval1,.true..and..false.)
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
          lval1 =.true.
          l9ans1 = ffbb1(.false..and.lval1,ldim11(5),ldim31(2,1,2))
          l9comp =.false.
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
          lval1 =.true.
          l9ans1 = ffbb1(.not.(.not.lval1),ldim11(12).or..false.,2.eq.5)
          l9comp =.true.
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
          ival1 = 156
          rval1 = 50.26
          rval2 = 48.33
          l9ans1 = ffbb1(ival1.ne.100,rval1.lt.60,rval1.gt.rval2)
          l9comp =.true.
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
          l9ans1 = ffbb1(idim11(9).ne.1000,(55-idim11(10))/5.gt.1,
     1             uffa(25,31,4).eq.60)
          l9comp =.true.
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
          ival1 = 98
          l9ans1 = ffbb1(ffbb2(151,6).gt.200,
     1                   idim11(9).eq.1000.or.(ival1+1).ne.100,
     2                   ival1.gt.0.and.ival1.lt.100)
          l9comp =.false.
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
          l9ans1 = ffbb3(ldim11,ldim31(2,2,1),ldim12,ldim32)
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
          rval1 = 156.99
          l9ans1 = ffbb4(ldim11(4),ldim12(8),(rval1-144.99)/48-0.09,
     1                   rdim11(3))
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
          l9ans1 = ffbb5((rdim11(5)+0.1)/16,(idim11(7)-110)**2,890)
          l9comp = .true.
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
          l9ans1 =.not. ffbb5(155.6,8,125)
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
          l9ans1 = .true.
          if(ffbb5(432.99,1350,1350)) l9ans1 = .false.
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
          l9ans1 = uffb(128.9,16,127)
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
          l9ans1 = ffbb1(ffbb5(567.8,66,77),.false.,.true.)
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
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end

          logical function ffbb1(lvf1,lvf2,lvf3)
          logical lvf1,lvf2,lvf3
          if(.not.lvf1) go to 10
          ffbb1 = lvf1.and.lvf2.or.lvf3
          return
   10     ffbb1 = .not.lvf2.and.lvf3
          return
          end

          integer function ffbb2 (ivalf1,ivalf2)
          ffbb2 = ivalf1 + ivalf2**2
          return
          end

          logical function ffbb3(ldim1,ldim3,ldim21,ldim22)
          logical   ldim1,ldim3,ldim21,ldim22,lv1,lv2
          dimension ldim1(1),ldim3(2,5,1),ldim21(5,4),ldim22(5,4)
          lv2 = .false.
          do 10 i=5,9,3
          if(ldim1(i)) go to 10
          lv1 = ldim21(i-4,2).and.ldim22(i-4,2)
          lv2 = lv2.or.lv1
   10     continue
          ffbb3 = .not.ldim3(2,4,1).and.lv2
          return
          end

          logical function ffbb4(ldim2,ldim3,rv,rdim1)
          logical ldim2(2,8), ldim3(2,5,2)
          dimension rdim1(5)
          if(rv.ge.rdim1(1).and.rv.lt.rdim1(2)) go to 10
          ffbb4 = ldim2(1,1).and.ldim3(1,1,1)
          return
   10     ffbb4 = .not.ldim2(1,1)
          return
          end

          logical function ffbb5(rv,iv1,iv2)
          ffbb5 = .false.
          do 20 i= 3,15,5
          if(i.ne.iv1) go to 10
          return
   10     if(iv1.eq.iv2) return
          if(rv.ge.567.8) go to 30
   20     ffbb5 = .not.ffbb5
          return
   30     ffbb5 = .false.
          return
          end
