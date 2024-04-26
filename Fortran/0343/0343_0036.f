      real       r9ans1,r9comp,r9dif1,r9dif2,r9dif3
         dimension r2tab1(2,2),r2tab2(3,3),r2tab3(4,4),r2tab4(2,2)
         common    i1val1,i1val2
         common    r2tab1,r2tab2
         common /inte01/ i1val3,i1val4
         common /real01/ r2tab3,r2tab4
         call   seaf07(2)
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
         r9ans1=feaf02(i1val1,r2tab1)
         r9comp=6.12
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
         call seaf06(i1val2,r2tab2,r9ans1)
         r9comp=52.2
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
         r9ans1=feaf02(i1val3,r2tab3)
         r9comp=197.52
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
         call seaf06(i1val4,r2tab4,r9ans1)
         r9comp=92.268
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
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
      block data
         dimension r2tab3(4,4),r2tab4(2,2)
         common /inte01/ i1val3,i1val4
         common /real01/ r2tab3,r2tab4
         data   i1val3/4/,i1val4/2/
     1         ,r2tab3(4,4)/98.76/,r2tab4(1,2)/23.067/
         end

      function          feaf02 (x,r2tab1)
         implicit integer (x)
         dimension  r2tab1(x,x)
         feaf02=2.0*r2tab1(x,x)
         return
         end

      subroutine seaf06(x,r2tab1,r9ans1)
         implicit integer (x)
         dimension  r2tab1(x,x)
         r9ans1=4.0*r2tab1(1,x)
         return
         end

      subroutine seaf07(i)
          dimension r2tab1(2,2),r2tab2(3,3)
          common    i1val1,i1val2
          common    r2tab1,r2tab2
          i1val1  = 2
          i1val2  = 3
          r2tab1(2,2) =  3.06
          r2tab2(1,3) = 13.05
          return
          end
