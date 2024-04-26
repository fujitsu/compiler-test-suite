      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
      real       r9ans1,r9comp,r9dif1,r9dif2,r9dif3
      double precision   d9ans1,d9comp,d9dif1,d9dif2,d9dif3
         complex          c1val1,c1val2,c1,c2
         integer          ufuj01,ufuj02,ufuj03
         double precision ufuj07,ufuj08,ufuj09
         ufuj01(c1,c2)= c1-c2+(3.0,2.0)*c1val1
          ufuj02(c1,c2)=c1+c2+c1+c2+(1.0,1.0)+c1+c2+c1val1
         ufuj03(c1,c2)= (2.0,0.0)*c1+c1val1-c2-c1+c1val1*c1val2-c1val1+
     1                  (2234.0,1280.0)+c1
         ufuj04(c1,c2)= c1+c2+(360739.0,33.34)
         ufuj05(c1,c2)= (-115.0,10.0)+c1*c2-(10.0,37.0)-c1val1*c1val2+
     1                  (0.0,-332211.0)
          ufuj06(c1,c2)=c1+c2+c1+c2+c1+c2+c1+c2+(1.0,1.0)+c1+c2+c1val1
         ufuj07(c1,c2)= c1+c2
         ufuj08(c1,c2)= (3.0,2.0)*c1*c1val1-(3.0,2.0)*c2*c1val1
         ufuj09(c1,c2)= c1+c2+c1+c2+c1+c2+c1+c2+c1+c2+c1+c2+c1+c2+(1.0,
     1                  1.0)
         c1val1=(1.0,1.0)
         c1val2=(1.0,1.0)
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
c
          i9ans1=ufuj01(c1val1,(125011.0,5005.))
         i9comp= -125009
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23300
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23500
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23400
23300 if( i9keyc.eq.1 ) go to 23500
      write(6,31520)
23400 continue
23500 i9ans1=0
c
         i9ans1= ufuj02(c1val1,c1val2)
         i9comp= 8
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23301
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23501
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23401
23301 if( i9keyc.eq.1 ) go to 23501
      write(6,31520)
23401 continue
23501 i9ans1=0
c
         i9ans1= ufuj03(c1val1,c1val2)
         i9comp= 2235
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23302
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23502
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23402
23302 if( i9keyc.eq.1 ) go to 23502
      write(6,31520)
23402 continue
23502 i9ans1=0
c
         r9ans1= ufuj04(c1val1,c1val2)
         r9comp= 360741.0
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
         r9ans1= ufuj05(c1val1,c1val2)
         r9comp= -125.0
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
         r9ans1= ufuj06(c1val1,c1val2)
         r9comp= 12.0
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
         d9ans1= ufuj07((-563527.0,153.0),c1val2)
         d9comp= -563526.0d0
      i9data = i9data + 1
      if( dabs( d9comp ) .eq. 0.0d00 ) go to 23950
      d9dif3 = dabs(( d9ans1-d9comp )/d9comp )
23900 if(d9dif3 - 5.0e-6)                24000,24000,24050
23950 d9dif3 = dabs(d9ans1)
      go to 23900
24000 if( i9keyc.eq.1 ) go to 24150
      write(6,31520)
      go to 24100
24050 i9errc = i9errc + 1
      if( i9keyc.eq.1 ) go to 24150
      write(6,31530)
      write(6,31620) i9data,d9ans1,d9comp,d9dif3
24100 continue
24150 d9ans1 = 0.0d00
c
         d9ans1= ufuj08(c1val1,c1val2)
         d9comp= 0.0d0
      i9data = i9data + 1
      if( dabs( d9comp ) .eq. 0.0d00 ) go to 23951
      d9dif3 = dabs(( d9ans1-d9comp )/d9comp )
23901 if(d9dif3 - 5.0e-6)                24001,24001,24051
23951 d9dif3 = dabs(d9ans1)
      go to 23901
24001 if( i9keyc.eq.1 ) go to 24151
      write(6,31520)
      go to 24101
24051 i9errc = i9errc + 1
      if( i9keyc.eq.1 ) go to 24151
      write(6,31530)
      write(6,31620) i9data,d9ans1,d9comp,d9dif3
24101 continue
24151 d9ans1 = 0.0d00
c
         d9ans1= ufuj09(c1val1,c1val2)
         d9comp= 15.0d0
      i9data = i9data + 1
      if( dabs( d9comp ) .eq. 0.0d00 ) go to 23952
      d9dif3 = dabs(( d9ans1-d9comp )/d9comp )
23902 if(d9dif3 - 5.0e-6)                24002,24002,24052
23952 d9dif3 = dabs(d9ans1)
      go to 23902
24002 if( i9keyc.eq.1 ) go to 24152
      write(6,31520)
      go to 24102
24052 i9errc = i9errc + 1
      if( i9keyc.eq.1 ) go to 24152
      write(6,31530)
      write(6,31620) i9data,d9ans1,d9comp,d9dif3
24102 continue
24152 d9ans1 = 0.0d00
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
