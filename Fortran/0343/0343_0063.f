      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
      real       r9ans1,r9comp,r9dif1,r9dif2,r9dif3
      double precision   d9ans1,d9comp,d9dif1,d9dif2,d9dif3
      complex    c9ans1,c9comp,c9df9
      real       r9dif5,r9dif6,r9dif7,r9dif8,r9dif9,r9df10,r9df11
      real       r9dim1(2),r9dim2(2),r9df99(2)
      equivalence        (c9ans1,r9dim1(1)),(c9comp,r9dim2(1)),
     *                   (c9df9,r9df99(1))
      complex*16 cd9ans,cd9com,cd9df9
      double precision   d9dif5,d9dif6,d9dim1(2),d9dim2(2),d9dif7,d9dif8
      double precision   d9dif9,d9df10,d9df11,d9df99(2)
      equivalence        (cd9ans,d9dim1(1)),(cd9com,d9dim2(1)),
     *                    (cd9df9,d9df99(1))
      logical    l9ans1,l9comp
      equivalence     (l9eans,l9ans1),(l9ecom,l9comp)
         integer * 2    i0val1,i0val2,i01,i02,i03
         integer  ufuf01,ufuf02
         double precision  ufuf05,ufuf06
         complex  ufuf07,ufuf08
         complex * 16   ufuf09,ufuf10
         ufuf01(i01,i02)= i01/i02+i03-50
         ufuf02(i01,i02)= i01+i02+1+i03+1
         ufuf03(i01,i02)= i01*i02/i03
         ufuf04(i01,i02)= i02+i01+i03+1+1+i03
         ufuf05(i01,i02)= i01+i02
         ufuf06(i01,i02)= i02+i01+1+i03
         ufuf07(i01)= 10000*i01
         ufuf08(i01,i02)= i01+i01+i02+1+i03
         ufuf09(i01)= i01-1
         ufuf10(i01,i02)= i01+i02+1-i03+i01+1-i03
         i0val1=3
         i0val2=4361
         i03   =-11522
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
31660 format(1h+,9x,1h(,i3,2h ), 12x,d24.17,12x,d24.17,21x,d24.17 /
     *      28x,d24.17,12x,d24.17,21x,d24.17 )
31670 format(1h ,27x,d24.17,12x,d24.17,21x,d24.17 )
31700 format(1h+,9x,1h( ,i3,2h ),33x,l3,33x,l3 )
c
         i9ans1= ufuf01(i0val1,i0val2)
         i9comp= -11572
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
         i9ans1= ufuf02(i0val1,i0val2)
         i9comp= -7156
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
         r9ans1= ufuf03(i0val1,i0val2)
         r9comp= -1.0
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
         r9ans1= ufuf04(i0val1,i0val2)
         r9comp= -18678.0
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
         d9ans1= ufuf05(i0val1,i0val2)
         d9comp= 4364.0d+0
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
         d9ans1= ufuf06(i0val1,i0val2)
         d9comp= -7157.0d+0
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
         c9ans1= ufuf07(i0val1)
          c9comp = (0.3e+5,0.0)
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24500 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24550
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-6) 24500,24500,24600
24550 if (abs(r9df99(lq))-5.0e-6) 24500,24600,24600
24500 continue
      if (i9keyc.eq.1) go to 24700
      write(6,31520)
      go to 24650
24600 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24700
      write(6,31530)
      write(6,31640) i9data,(r9dim1(lq),r9dim2(lq),r9df99(lq),lq=1,2)
24650 continue
24700 c9ans1=(0.0,0.0)
c
         c9ans1= ufuf08(i0val1,i0val2)
         c9comp= (-7154.0,0.0)
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24501 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24551
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-6) 24501,24501,24601
24551 if (abs(r9df99(lq))-5.0e-6) 24501,24601,24601
24501 continue
      if (i9keyc.eq.1) go to 24701
      write(6,31520)
      go to 24651
24601 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24701
      write(6,31530)
      write(6,31640) i9data,(r9dim1(lq),r9dim2(lq),r9df99(lq),lq=1,2)
24651 continue
24701 c9ans1=(0.0,0.0)
c
         cd9ans= ufuf09(i0val1)
          cd9com = (0.2d+1,0.d0)
      i9data=i9data+1
      cd9df9=cd9ans-cd9com
      do 24850 lq=1,2
      if (d9dim2(lq).eq.0.0d0) go to 24900
      if (dabs(d9df99(lq))-dabs(d9dim2(lq))*5.0e-6) 24850,24850,24950
24900 if (dabs(d9df99(lq))-5.0e-6) 24850,24950,24950
24850 continue
      if (i9keyc.eq.1) go to 25050
      write(6,31520)
      go to 25000
24950 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 25050
      write(6,31530)
      write(6,31660) i9data,(d9dim1(lq),d9dim2(lq),d9df99(lq),lq=1,2)
25000 continue
25050 cd9ans=(0.0d0,0.0d0)
c
         cd9ans= ufuf10(i0val1,i0val2)
         cd9com= (27413.0d0,0.0d0)
      i9data=i9data+1
      cd9df9=cd9ans-cd9com
      do 24851 lq=1,2
      if (d9dim2(lq).eq.0.0d0) go to 24901
      if (dabs(d9df99(lq))-dabs(d9dim2(lq))*5.0e-6) 24851,24851,24951
24901 if (dabs(d9df99(lq))-5.0e-6) 24851,24951,24951
24851 continue
      if (i9keyc.eq.1) go to 25051
      write(6,31520)
      go to 25001
24951 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 25051
      write(6,31530)
      write(6,31660) i9data,(d9dim1(lq),d9dim2(lq),d9df99(lq),lq=1,2)
25001 continue
25051 cd9ans=(0.0d0,0.0d0)
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
