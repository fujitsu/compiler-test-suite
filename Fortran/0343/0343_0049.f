      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
      real       r9ans1,r9comp,r9dif1,r9dif2,r9dif3
c
          integer   aval1(3),aval2(3,3),aval3(3,3,3),
     1              fjjf1,fjjf2,fjjf4,fjjf6,fjjf7,fjjf8
          real      aval4(3,3,3,3)
          dimension ival5(3,3,3,3,3),aval6(3,3,3,3,3,3),
     1              ival7(3,3,3,3,3,3,3)
c
          data      aval1/1,1234,1/
          data      aval2/4*1,2345,4*1/
          data      aval3/7*1,3456,19*1/
          data      aval4/8*1.0,-4.567e8,72*1.0/
          data      ival5/9*1,5678,233*1/
          data      aval6/10*1.0,-6.789e10,718*1.0/
          data      ival7/11*1,7890,2175*1/
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
c
          i9comp=12340
          i9ans1=fjjf8(aval1(2))
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23300
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23500
      write(6,31530)
      go to 23400
23300 if( i9keyc.eq.1 ) go to 23500
      goto 23500
23400 write(6,31600) i9data,i9ans1,i9comp
23500 i9ans1=0
c
          i9comp=23450
          i9ans1=fjjf8(aval2(2,2))
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23301
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23501
      write(6,31530)
      go to 23401
23301 if( i9keyc.eq.1 ) go to 23501
      goto 23501
23401 write(6,31600) i9data,i9ans1,i9comp
23501 i9ans1=0
c
          i9comp=34560
          i9ans1=fjjf8(aval3(2,3,1))
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23302
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23502
      write(6,31530)
      go to 23402
23302 if( i9keyc.eq.1 ) go to 23502
      goto 23502
23402 write(6,31600) i9data,i9ans1,i9comp
23502 i9ans1=0
c
          r9ans1=fjjf9(aval4(3,3,1,1))
          r9comp=-4.567e9
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23650
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23600 if(r9dif3 - 5.0e-6)                23700,23700,23750
23650 r9dif3 = abs(r9ans1)
      go to 23600
23700 if( i9keyc.eq.1) go to 23850
      goto 23850
23750 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23850
      write(6,31530)
23800 write(6,31610) i9data,r9ans1,r9comp,r9dif3
23850 r9ans1 = 0.0e00
c
          i9comp=56780
          i9ans1=fjjf8(ival5(1,1,2,1,1))
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23303
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23503
      write(6,31530)
      go to 23403
23303 if( i9keyc.eq.1 ) go to 23503
      goto 23503
23403 write(6,31600) i9data,i9ans1,i9comp
23503 i9ans1=0
c
          r9ans1=fjjf9(aval6(2,1,2,1,1,1))
          r9comp=-6.789e11
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23651
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23601 if(r9dif3 - 5.0e-6)                23701,23701,23751
23651 r9dif3 = abs(r9ans1)
      go to 23601
23701 if( i9keyc.eq.1) go to 23851
      goto 23851
23751 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23851
      write(6,31530)
23801 write(6,31610) i9data,r9ans1,r9comp,r9dif3
23851 r9ans1 = 0.0e00
c
          i9comp=78900
          i9ans1=fjjf8(ival7(3,1,2,1,1,1,1))
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23304
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23504
      write(6,31530)
      go to 23404
23304 if( i9keyc.eq.1 ) go to 23504
      goto 23504
23404 write(6,31600) i9data,i9ans1,i9comp
23504 i9ans1=0
c
          ival=10
          i9ans1=fjjf1(ival)
          i9comp=12340
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23305
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23505
      write(6,31530)
      go to 23405
23305 if( i9keyc.eq.1 ) go to 23505
      goto 23505
23405 write(6,31600) i9data,i9ans1,i9comp
23505 i9ans1=0
c
          ival=10
          i9ans1=fjjf2(ival)
          i9comp=23450
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23306
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23506
      write(6,31530)
      go to 23406
23306 if( i9keyc.eq.1 ) go to 23506
      goto 23506
23406 write(6,31600) i9data,i9ans1,i9comp
23506 i9ans1=0
c
          r=10.0
          r9ans1=fjjf3(r)
          r9comp=-3.456e8
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23652
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23602 if(r9dif3 - 5.0e-6)                23702,23702,23752
23652 r9dif3 = abs(r9ans1)
      go to 23602
23702 if( i9keyc.eq.1) go to 23852
      goto 23852
23752 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23852
      write(6,31530)
23802 write(6,31610) i9data,r9ans1,r9comp,r9dif3
23852 r9ans1 = 0.0e00
c
          ival=10
          i9ans1=fjjf4(ival)
          i9comp=45670
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23307
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23507
      write(6,31530)
      go to 23407
23307 if( i9keyc.eq.1 ) go to 23507
      goto 23507
23407 write(6,31600) i9data,i9ans1,i9comp
23507 i9ans1=0
c
          r=10.0
          r9ans1=fjjf5(r)
          r9comp=-5.6789e11
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23653
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23603 if(r9dif3 - 5.0e-6)                23703,23703,23753
23653 r9dif3 = abs(r9ans1)
      go to 23603
23703 if( i9keyc.eq.1) go to 23853
      goto 23853
23753 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23853
      write(6,31530)
23803 write(6,31610) i9data,r9ans1,r9comp,r9dif3
23853 r9ans1 = 0.0e00
c
          ival=10
          i9ans1=fjjf6(ival)
          i9comp=789010
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23308
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23508
      write(6,31530)
      go to 23408
23308 if( i9keyc.eq.1 ) go to 23508
      goto 23508
23408 write(6,31600) i9data,i9ans1,i9comp
23508 i9ans1=0
c
          ival=10
          i9ans1=fjjf7(ival)
          i9comp=9012340
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23309
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23509
      write(6,31530)
      go to 23409
23309 if( i9keyc.eq.1 ) go to 23509
      goto 23509
23409 write(6,31600) i9data,i9ans1,i9comp
23509 i9ans1=0
c
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
c
          integer  function  fjjf1(i)
          integer   aval8(10)
          data      aval8/5*1,1234,4*1/
          fjjf1 = i * aval8(6)
          return
          end
c
          integer  function  fjjf2(i)
          integer   aval9(4,4)
          data      aval9/6*1,2345,9*1/
          fjjf2 = i * aval9(3,2)
          return
          end
c
          function  fjjf3(r)
          real      aval10(3,3,3)
          data      aval10/7*1.0,-3.456e7,19*1.0/
          fjjf3 = r * aval10(2,3,1)
          return
          end
c
          integer   function  fjjf4(i)
          dimension ival11(3,3,3,3)
          data      ival11/8*1,4567,72*1/
          fjjf4 = i * ival11(3,3,1,1)
          return
          end
c
          function  fjjf5(r)
          dimension rval12(3,3,3,3,3)
          data      rval12/10*1.0,-5.6789e10,232*1.0/
          fjjf5 = r * rval12(2,1,2,1,1)
          return
          end
c
          integer   function  fjjf6(i)
          dimension ival13(3,3,3,3,3,3)
          data      ival13/12*1,78901,716*1/
          fjjf6 = i * ival13(1,2,2,1,1,1)
          return
          end
c
          integer   function  fjjf7(i)
          dimension ival14(3,3,3,3,3,3,3)
          data      ival14/14*1,901234,2172*1/
          fjjf7 = i * ival14(3,2,2,1,1,1,1)
          return
          end
c
          integer function fjjf8(i)
          fjjf8=i*10
          return
          end
c
          function  fjjf9(r)
          fjjf9 = r * 10.0
          return
          end
