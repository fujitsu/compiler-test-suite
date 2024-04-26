      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
      real       r9ans1,r9comp,r9dif1,r9dif2,r9dif3
      complex    c9ans1,c9comp,c9df9
      real       r9dif5,r9dif6,r9dif7,r9dif8,r9dif9,r9df10,r9df11
      real       r9dim1(2),r9dim2(2),r9df99(2)
      equivalence        (c9ans1,r9dim1(1)),(c9comp,r9dim2(1)),
     *                   (c9df9,r9df99(1))
          complex   c1val1,c1val2,c1val3,c1val4
         common /inte01/  i1val1
         common /real01/  r1val1
         common /comp01/  c1val1
         common i1val2
         common r1val2
         common c1val2
         equivalence (i1val3,i1val4),(r1val3,r1val4),(c1val3,c1val4)
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
31640 format(1h+,9x,1h(,i3,2h ),21x,e15.8,21x,e15.8,30x,e15.8 /
     *      37x,e15.8,21x,e15.8,30x,e15.8 )
31650 format(1h ,36x,e15.8,21x,e15.8,30x,e15.8 )
c
          i1val1=1256896451
         i9ans1=i1val1
          i9comp=1256896451
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
          r1val1=3.92984
         r9ans1=r1val1
          r9comp=3.92984e0
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
          c1val1=(2.12111e2,6.32767e5)
         c9ans1=c1val1
          c9comp=(212.111,632767.)
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
          i1val2=15
         i9ans1=i1val2
          i9comp=15
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
          r1val2=5168.324
         r9ans1=r1val2
          r9comp=5168.324
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
          c1val2=(245.3268,18458.32)
         c9ans1=c1val2
          c9comp=(245.3268,18458.32)
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
      i1val3=8
          if( i1val3.eq.8 )   i9ans1 = i1val4
      i9comp=8
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
          r1val3=-6.2222
          if (r1val3.lt.-6.)  r9ans1=r1val4
          r9comp=-6.2222e0
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
          c1val3=(3.456e-1,-11.56e+1)
          if(.true.)  c9ans1=c1val3
          c9comp=(.3456e0,-.1156e3)
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24502 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24552
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-6) 24502,24502,24602
24552 if (abs(r9df99(lq))-5.0e-6) 24502,24602,24602
24502 continue
      if (i9keyc.eq.1) go to 24702
      write(6,31520)
      go to 24652
24602 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24702
      write(6,31530)
      write(6,31640) i9data,(r9dim1(lq),r9dim2(lq),r9df99(lq),lq=1,2)
24652 continue
24702 c9ans1=(0.0,0.0)
c
          call  sesj01(399912,i9ans1)
          i9comp=399912
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23303
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23503
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23403
23303 if( i9keyc.eq.1 ) go to 23503
      write(6,31520)
23403 continue
23503 i9ans1=0
c
          call sesj02(-991.23e0,r9ans1)
          r9comp=-.99123e+3
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
          call  sesj03((2.7,3.15423),c9ans1)
          c9comp=(.27e1,.315423e1)
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24503 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24553
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-6) 24503,24503,24603
24553 if (abs(r9df99(lq))-5.0e-6) 24503,24603,24603
24503 continue
      if (i9keyc.eq.1) go to 24703
      write(6,31520)
      go to 24653
24603 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24703
      write(6,31530)
      write(6,31640) i9data,(r9dim1(lq),r9dim2(lq),r9df99(lq),lq=1,2)
24653 continue
24703 c9ans1=(0.0,0.0)
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end

      subroutine sesj01(i1val1,i9ans1)
          if(i1val1.gt.0)  i9ans1=i1val1
         return
         end

      subroutine sesj02(r1val1,r9ans1)
          if(r1val1.lt.-991.)   r9ans1=r1val1
         return
         end

      subroutine sesj03(c1val1,c9ans1)
          complex   c1val1,c9ans1
          if(.true.)  c9ans1=c1val1
          return
          end
