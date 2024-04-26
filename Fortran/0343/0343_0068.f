          logical   lval1
          logical ffcb10
          integer ffcb6,ffcb7
c
      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
      real       r9ans1,r9comp,r9dif1,r9dif2,r9dif3
      logical    l9ans1,l9comp
      equivalence     (l9eans,l9ans1),(l9ecom,l9comp)
          dimension rdim11(15),rdim12(30)
          dimension rdim21(10,3)
          dimension rdim31(3,5,2),rdim32(4,2,5)
          data      rdim11/4*0.,2.131,4*0.,8.443,2*0.,30.5,33.5,-5.667/
          data      rdim12/9*0.,5.667,3*0.,2.446,2.,4*0.,2.131,10*0./
          data  rdim21/4*0.,-8.443,4*0.,5.555,4*0.,-8.443,14*0.,69./
          data      rdim31/21*0.,1.212,8*0./
          data      rdim32/9*0.,0.321033,30*0./
c
31500 format(1h0,1x,4h*ok*,4x,1h( ,i3,2h ))
31510 format(1h0,1x,7h*error*,1x,1h( ,i3,2h ))
31520 format(1h0,1x,4h*ok* )
31530 format(1h0,1x,7h*error* )
31550 format( // 19h + justice + item +,15x,19h+ computed result +,
     *       19x,17h+ compare value +,31x,14h+ difference + / )
      i9keyc=1
      if (i9keyc.eq.0) go to 32010
32000 write(6,31550)
32010 i9keyc = i9keyc + 1
      i9data=0
      i9errc=0
      i9ans1=0
c
31600 format(1h+, 9x,1h( ,i3,2h ),21x,i15,21x,i15 )
31610 format(1h+,9x,1h(, i3, 2h ),21x,e15.8,21x,e15.8,30x,e15.8 )
31700 format(1h+,9x,1h( ,i3,2h ),33x,l3,33x,l3 )
c
          rval1 = 431.9
          r9ans1 = ffcb1(559.45,123.59-83.04,rval1,rval1/3.5+44.7,
     1                  (rval1-222.3)/50+120)
          r9comp = 124.192
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
23800 write(6,31610) i9data 
23850 r9ans1 = 0.0e00
c
          r9ans1 = ffcb2(rdim21(10,3),rdim11(13)+rdim11(14),rdim11,
     1                   rdim12(6),rdim21)
          r9comp = (rdim11(5)*rdim12(10)+rdim21(5,1)
     1            +rdim11(10)*rdim12(15)+rdim21(10,1)
     2            +rdim11(15)*rdim12(20)+rdim21(5,2))
     3            /(rdim21(10,3)-(rdim11(13)+rdim11(14)))
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
23801 write(6,31610) i9data 
23851 r9ans1 = 0.0e00
c
          ival1 = -2
          lval1 = .true.
          r9ans1 = ffcb3(rdim31,rdim32,-ival1,
     1                   (8+(ival1+32)/(ival1-4))**2,
     2                   .not.((.not.lval1.and..true.).or..false.),
     3                   (ival1-5).lt.(5-ival1))
          r9comp = 1.789977
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
23802 write(6,31610) i9data 
23852 r9ans1 = 0.0e00
c
          rval2  = 123.456
          r9ans1 = ffcb4(rval2)
          r9comp = 456.789
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
23803 write(6,31610) i9data 
23853 r9ans1 = 0.0e00
c
          rval1 = 198.26
          rval2 =-222.99
          rval3 = 343.48
          r9ans1 = ffcb5(rval1,rval2,rval3)
          r9comp = 98.26
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
23804 write(6,31610) i9data 
23854 r9ans1 = 0.0e00
c
          i9ans1 = ffcb6(50)
          i9comp = 20
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23300
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23500
      write(6,31530)
      go to 23400
23300 if( i9keyc.eq.1 ) go to 23500
      write(6,31520)
23400 write(6,31600) i9data 
23500 i9ans1=0
c
          i9ans1 = ffcb7(10)
          i9comp = 55
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23301
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23501
      write(6,31530)
      go to 23401
23301 if( i9keyc.eq.1 ) go to 23501
      write(6,31520)
23401 write(6,31600) i9data 
23501 i9ans1=0
c
          r9ans1 = ffcb8(136,72,58,32.96,11.33,43.5,14.5)
          r9comp = 376.4368
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
23805 write(6,31610) i9data 
23855 r9ans1 = 0.0e00
c
          r9ans1 = ffcb9(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,
     1                  19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,
     2                  34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,
     3                  49,50)
          r9comp = 48.
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
23806 write(6,31610) i9data 
23856 r9ans1 = 0.0e00
c
          l9ans1 = ffcb10(.true.,.false.,.true.,.false.,.true.,
     1                    56,7,23,-8,43,32,99,22,87,-66)
          l9comp = .true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2560
     *0
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25800
      write(6,31530)
      go to 25700
25600 if(i9keyc.eq.1) go to 25800
      write(6,31520)
25700 write(6,31700) i9data 
25800 continue
c
          r9ans1 = ffcb11(15.63,5.58)
          r9comp = 449.8641
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
23807 write(6,31610) i9data 
23857 r9ans1 = 0.0e00
c
          r9ans1 = ffcb13(22.33,0.07767,2,.true.,.true.)
          r9comp = 100.
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
23808 write(6,31610) i9data 
23858 r9ans1 = 0.0e00
c
          r9ans1 = ffcb18(7.25,43.5,2,.true.,.false.)
          r9comp = 43.5/7.25+2**2*(7.25+43.5)+7.25*10**1
     1             +7.25*43.5+43.5*10**(2+1)+7.25
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
23809 write(6,31610) i9data 
23859 r9ans1 = 0.0e00
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end

          function ffcb1(rv1,rv2,rv3,rv4,rv5)
c
          ffcb1 = 0.
          if(rv3+rv4.eq.0.) return
          ffcb1 = (rv1+rv2)/(rv3+rv4)*rv5
          return
          end

          function ffcb2(rv1,rv2,rdim1,rdim2,rdim3)
c
          dimension rdim1(15),rdim2(20),rdim3(30)
          sum = 0
          do 10 i=5,15,5
   10     sum = sum + rdim1(i)*rdim2(i) + rdim3(i)
          ffcb2 = sum/(rv1-rv2)
          return
          end

          function ffcb3(rdim2,rdim3,iv1,iv2,lv1,lv2)
c
          logical lv1,lv2
          dimension rdim2(3,10),rdim3(4,2,5)
          ffcb3 = 0.
          do 10 i=8,iv2,4
   10     ffcb3 = ffcb3 + rdim2(1,i)**iv1 + rdim3(2,1,i-6)
          if(lv1.and.lv2) return
          ffcb3 = -ffcb3
          return
          end

          function ffcb4(rv)
          read(5,100) ffcb4
  100     format(f10.3)
          if(ffcb4.gt.rv) return
          if(ffcb4.lt.0.) go to 10
          rv = (ffcb4+rv)/2
          return
   10     rv = -rv
          return
          end

          function ffcb5(rv1,rv2,rv3)
          if(rv1.gt.100) ffcb5=rv1-100
          rv2 = rv2 + 100
          if(rv1.le.100) ffcb5=100-rv1
          if(rv1.lt.0) return
          if(rv1.eq.0) go to 10
          if(rv2.lt.0) return
          if(rv2.eq.0) go to 20
          if(rv3.lt.0) return
          if(rv3.gt.300) ffcb5=300-rv3
          if(rv3.le.rv2) go to 30
          if(rv3.gt.rv1) return
          if(rv3.gt.100) return
          if(rv3.eq.rv1) return
          rv3 = ffcb5
          return
   10     rv1 = 100
          return
   20     rv2 = 200
          return
   30     rv3 = rv2
          return
          end

          integer function ffcb6(iv)
          j=10
          do 10 ffcb6=10,40,5
          if(iv.eq.j) return
   10     j=j+20
          return
          end

          integer function ffcb7(iv)
          ffcb7 = 0
          if(iv.le.0) return
          do 10 i=1,iv
   10     ffcb7=ffcb7+i
          return
          end

          function ffcb8(iv1,iv2,iv3,rv1,rv2,rv3,rv4)
          if(iv1.gt.(iv2+iv3)) go to 10
          ffcb8 = rv1*rv2-rv3/rv4
          return
   10     ffcb8 = rv1*rv2+rv3/rv4
          return
          end

          function ffcb9(iv01,iv02,iv03,iv04,iv05,iv06,iv07,iv08,iv09,
     1              iv10,iv11,iv12,iv13,iv14,iv15,iv16,iv17,iv18,iv19,
     2              iv20,iv21,iv22,iv23,iv24,iv25,iv26,iv27,iv28,iv29,
     3              iv30,iv31,iv32,iv33,iv34,iv35,iv36,iv37,iv38,iv39,
     4              iv40,iv41,iv42,iv43,iv44,iv45,iv46,iv47,iv48,iv49,
     5              iv50)
          dimension idim(10)
          idim(1) = iv01+iv02+iv03+iv04+iv05
          idim(2) = iv06+iv07+iv08+iv09+iv10
          idim(3) = iv11+iv12+iv13+iv14+iv15
          idim(4) = iv16+iv17+iv18+iv19+iv20
          idim(5) = iv21+iv22+iv23+iv24+iv25
          idim(6) = iv26+iv27+iv28+iv29+iv30
          idim(7) = iv31+iv32+iv33+iv34+iv35
          idim(8) = iv36+iv37+iv38+iv39+iv40
          idim(9) = iv41+iv42+iv43+iv44+iv45
          idim(10) = iv46+iv47+iv48+iv49+iv50
          max = idim(1)
          do 10 i=2,10
          if(max.lt.idim(i)) max=idim(i)
   10     continue
          ffcb9 = max/5.
          return
          end

          logical function ffcb10(lv1,lv2,lv3,lv4,lv5,
     1                     iv1,iv2,iv3,iv4,iv5,iv6,iv7,iv8,iv9,iv10)
          logical   lv1,lv2,lv3,lv4,lv5
          if(.not.lv1) go to 10
          isum = (iv1-iv2)+(iv3-iv4)+(iv5-iv6)+(iv7-iv8)+(iv9-iv10)
          if(isum.le.0) go to 10
          ffcb10 = lv2 .or. lv3
          return
   10     ffcb10 = lv4 .and. lv5
          return
          end

          function ffcb11(rv1,rv2)
          ffcb11 = ffcb12(rv1,rv2)**2
          return
          end

          function ffcb12(rv1,rv2)
          ffcb12 = rv1 + rv2
          return
          end

          function ffcb13(rv1,rv2,iv1,lv1,lv2)
          logical lv1,lv2
          ffcb13 = rv1 + ffcb14(rv2,iv1,lv1,lv2)
          return
          end

          function ffcb14(rv,iv,lv1,lv2)
          logical lv1,lv2
          integer ffcb15
          ffcb14 = rv * ffcb15(iv,lv1,lv2)
          return
          end

          integer function ffcb15(iv,lv1,lv2)
          logical lv1,lv2
          integer ffcb16
          ffcb15 = 10**ffcb16(iv,lv1,lv2)
          return
          end

          integer function ffcb16(iv,lv1,lv2)
          logical lv1,lv2,ffcb17
          ffcb16 = iv
          if(ffcb17(lv1,lv2)) return
          ffcb16 = ffcb16 + 1
          return
          end

          logical function ffcb17(lv1,lv2)
          logical lv1,lv2
          ffcb17 = .not. lv1 .and. lv2
          return
          end

          function ffcb18(rv1,rv2,iv1,lv1,lv2)
          logical lv1,lv2
          ffcb18 = ffcb19(rv1,rv2,iv1,lv1,lv2)
          if(rv1.lt.rv2) return
          ffcb18 =-ffcb19(rv1,rv2,iv1,lv1,lv2)
          return
          end

          function ffcb19(rv1,rv2,iv1,lv1,lv2)
          logical lv1,lv2
          ffcb19 = ffcb20(rv1,rv2,iv1,lv1,lv2) + rv2/rv1
          return
          end

          function ffcb20(rv1,rv2,iv1,lv1,lv2)
          logical lv1,lv2
          ffcb20 = ffcb21(rv1,rv2,iv1,lv1,lv2) + iv1**2*(rv1+rv2)
          return
          end

          function ffcb21(rv1,rv2,iv1,lv1,lv2)
          logical lv1,lv2
          ffcb21 = ffcb22(rv1,rv2,iv1,lv1,lv2) + rv1*10**(iv1-1)
          return
          end

          function ffcb22(rv1,rv2,iv1,lv1,lv2)
          logical lv1,lv2
          ffcb22 = ffcb13(rv1,rv2,iv1,lv1,lv2) + rv1*rv2
          return
          end
