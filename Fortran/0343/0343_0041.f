          common    /n01/ i01,j01 /n02/ i02,j02
     1              /n03/ i03,j03,a03,b03,k03 /n04/ i04(2),j04(1)
          common    /n05/ k05(3,3),a05(2,2,4),b05(5) /n06/ i06,j06,k06
     1              /n07/ i07,a07,j07,b07 /n08/ i08(4,4),j08(3,3,3)
          common    /n09/ i09(2),a09(3) /n10/ i10,j10(4,3),a10,b10(3,3)
     5              /n11/ m11(2) /n12/ m12(2) /n13/ m13(2) /n14/ m14(2)
     6              /n15/ m15(2) /n16/ m16(3) /n17/ m17(2) /n18/ m18(2)
c
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
      common        /n19/ m19(2) /n20/ m20(2) /n21/ m21(2) /n22/ m22(2)
     8              /n23/ m23(2) /n24/ m24(2) /n25/ m25(2) /n26/ m26(2)
     9              /n27/ m27(2) /n28/ m28(2) /n29/ m29(2) /n30/ m30(2)
     a              /n31/ m31(2) /n32/ m32(2) /n33/ m33(2) /n34/ m34(2)
     b              /n35/ m35(2) /n36/ m36(2) /n37/ m37(2) /n38/ m38(2)
     c              /n39/ m39(2) /n40/ m40(2) /n41/ m41(2) /n42/ m42(2)
     d              /n43/ m43(2) /n44/ m44(2) /n45/ m45(2) /n46/ m46(2)
     e              /n47/ m47(2) /n48/ m48(2) /n49/ m49(2) /n50/ m50(2)
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
32000 write(6,31550)
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
31660 format(1h+,9x,1h(,i3,2h ), 12x,d24.17,12x,d24.17,21x,d24.17 /
     *      28x,d24.17,12x,d24.17,21x,d24.17 )
31670 format(1h ,27x,d24.17,12x,d24.17,21x,d24.17 )
31700 format(1h+,9x,1h( ,i3,2h ),33x,l3,33x,l3 )
c
          i9comp = 0
          i01 = 1
          call sfsj1(isw)
          if(j01-1)           20,10,20
   10     i9comp = 1
   20 i9data = i9data + 1
      if (iabs(j01-i9comp).eq.0) go to 23300
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23500
      write(6,31530)
      go to 23400
23300 if( i9keyc.eq.1 ) go to 23500
      write(6,31520)
23400 write(6,31600) i9data
23500 i9ans1=0
c
          isw = 2
          i02 = 0
          j02 = 102
          call sfsj2(isw)
          i9comp = 102
      i9data = i9data + 1
      if (iabs(i02-i9comp).eq.0) go to 23301
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23501
      write(6,31530)
      go to 23401
23301 if( i9keyc.eq.1 ) go to 23501
      write(6,31520)
23401 write(6,31600) i9data
23501 i9ans1=0
c
          isw = 3
          i03 = 3
          a03 = 0.5
          b03 = 0.75
          j03 = 1
          call sfsj2(isw)
          r9comp = 0.8125
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23650
      r9dif3 = abs(( b03 - r9comp )/r9comp)
23600 if(r9dif3 - 5.0e-6)                23700,23700,23750
23650 r9dif3 = abs(b03)
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
          isw    = 4
          i04(2) = 0
          i04(1) = -4
          j04(1) = 21
          call sfsj3(isw)
          i9comp = 17
      i9data = i9data + 1
      if (iabs(i04(2)-i9comp).eq.0) go to 23302
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23502
      write(6,31530)
      go to 23402
23302 if( i9keyc.eq.1 ) go to 23502
      write(6,31520)
23402 write(6,31600) i9data
23502 i9ans1=0
c
          isw    = 5
          a05(1,2,3) = 3.6
          k05(3,2)   = 3
          call sfsj3(isw)
          r9comp = 6.6
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23651
      r9dif3 = abs(( b05(1) - r9comp )/r9comp)
23601 if(r9dif3 - 5.0e-6)                23701,23701,23751
23651 r9dif3 = abs(b05(1))
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
          isw = 6
          i06 = 0
          j06 = 6
          k06 =4
          call sfsj4(isw)
          i9comp = 1
      i9data = i9data + 1
      if (iabs(i06-i9comp).eq.0) go to 23303
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23503
      write(6,31530)
      go to 23403
23303 if( i9keyc.eq.1 ) go to 23503
      write(6,31520)
23403 write(6,31600) i9data
23503 i9ans1=0
c
          isw = 7
          i07 = 0
          a07 = 0.0801
          b07 = 0.1201
          j07 = 5
          call sfsj4(isw)
          r9comp = 0.02404402
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23652
      r9dif3 = abs(( a07 - r9comp )/r9comp)
23602 if(r9dif3 - 5.0e-6)                23702,23702,23752
23652 r9dif3 = abs(a07)
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
          isw    = 8
          i08(isw-4,4) = 0
          j08(3,3,1)   = 12767
          call sfsj4(isw)
          i9comp       = 12767
      i9data = i9data + 1
      if (iabs(i08(4,4)-i9comp).eq.0) go to 23304
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23504
      write(6,31530)
      go to 23404
23304 if( i9keyc.eq.1 ) go to 23504
      write(6,31520)
23404 write(6,31600) i9data
23504 i9ans1=0
c
          isw    = 9
          i09(1) = 0
          a09(1) = 1.8
          call sfsj4(isw)
          i9comp = 1
      i9data = i9data + 1
      if (iabs(i09(1)-i9comp).eq.0) go to 23305
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23505
      write(6,31530)
      go to 23405
23305 if( i9keyc.eq.1 ) go to 23505
      write(6,31520)
23405 write(6,31600) i9data
23505 i9ans1=0
c
          i = 2
          j = 3
          isw    = 10
          b10(1,2) = 0.0
          a10    = 0.01
          j10(j,i) = 93
          b10(i,j) = 0.11
          call sfsj4(isw)
          r9comp = 0.1111
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23653
      r9dif3 = abs(( b10(1,2) - r9comp )/r9comp)
23603 if(r9dif3 - 5.0e-6)                23703,23703,23753
23653 r9dif3 = abs(b10(1,2))
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
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end

      subroutine sfsj1(isw)
          common    /n01/ i01,j01
          isw = 1
          if(i01-1)           20,10,20
   10     j01 = 1
          return
   20     j01 = 0
          return
      end

      subroutine sfsj2(isw)
          common    /n02/ i02,j02 /n03/ i03,j03,a03,b03,k03
          if(isw-2)           15,10,20
   10     i02 = j02
   15     return
   20     b03 = a03*a03 + b03*b03
          return
      end

      subroutine sfsj3(isw)
          common    /n04/ i04(2),j04(1) /n05/ k05(3,3),a05(2,2,4),b05(5)
     1              /n11/ i11(1),j11(1) /n12/ k12(1),a12(1)
     2              /n13/ i13(1),j13(1) /n14/ k14(1),a14(1)
     3              /n15/ i15(1),j15(1)
          if(isw-4)           15,10,20
   10     i04(2) = i04(1) + j04(1)
   15     return
   20     b05(3) = k05(3,2)
          b05(1) = a05(1,2,3) + b05(3)
          return
      end

      subroutine sfsj4(isw)
          common    /n06/ i06,j06,k06 /n07/ i07,a07,j07,b07
     1              /n08/ i08(4,4),j08(3,3,3) /n09/ i09(2),a09(3)
     2              /n10/ i10,j10(4,3),a10,b10(3,3) /n16/ i16,j16,k16
     3              /n17/ i17,a17 /n18/ i18(1),j18(1) /n19/ i19(1),a19
     4              /n20/ i20,a20(1) /n21/ a21,b21 /n22/ i22,a22
     5              /n23/ i23(1),j23(1) /n24/i24(1),a24(1) /n26/i26,j26
     6              /n25/ i25,a25(1) /n27/ i27,a27 /n28/ i28(1),j28(1)
     7              /n29/ i29(1),a29(1) /n30/ a30,i30(1) /n31/ i31,j31
     8              /n32/ i32,b32 /n33/ a33(1),b33(1) /n35/ a35(1),i35
     9              /n34/ i34(1),a34(1) /n36/ i36,j36 /n37/ i37,a37
     a              /n38/ i38(1),j38(1) /n39/ i39(1),a39(1)
     b              /n40/ i40,j40(1) /n41/ i41,j41 /n42/ i42,a42
     c              /n43/ i43(1),j43(1) /n44/ i44(1),a44(1)
     d              /n45/ i45(1),a45 /n46/ a46,b46 /n47/ i47,a47
     e              /n48/ a48(1),b48(1) /n49/ a49(1),i49(1)
     f              /n50/ i50,a50
          go to (10,10,10,10,10,20,30,40,50,60) , isw
   10     return
   20     i06 = j06 / k06
          return
   30     a07 = (a07+b07) * b07
          return
   40     i08(4,4) = j08(3,3,1)
          return
   50     i09(1) = a09(1)
          return
   60     b10(1,2) = a10*b10(2,3) + b10(2,3)
          return
      end
