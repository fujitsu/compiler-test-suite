      integer    i9ans1,i9comp,lq,l9eans,l9ecom
      real       r9ans1,r9comp,r9dif3
      double precision   d9ans1,d9comp,d9dif3
      complex    c9ans1,c9comp,c9df9
      real       r9dim1(2),r9dim2(2),r9df99(2)
      equivalence        (c9ans1,r9dim1(1)),(c9comp,r9dim2(1)),
     *                   (c9df9,r9df99(1))
      logical    l9ans1,l9comp
      equivalence     (l9eans,l9ans1),(l9ecom,l9comp)
         logical     l2tab1(2,2),l2tab2(4),l1val1,l2tab3(1),l2tab4(4)
         double precision        d2tab1(2,2,2),d2tab2(8),d2tab3(2,3)
     1                          ,d2tab4(2)
         complex     c2tab1(4),c2tab2(4),c2tab3(5),c2tab4(4)
         dimension   i2tab1(4),i2tab2(4),i2tab3(3),i2tab4(3)
         dimension   r2tab1(4,4),r2tab2(4,4),r2tab3(5),r2tab4(1)
         common  i2tab3,r2tab3,d2tab3,c2tab3,l2tab3
         equivalence  (i2tab1(1),i2tab2(1)),(r2tab1(1,1),r2tab2(1,1)),
     1                (d2tab1(1,1,1),d2tab2(1)),(c2tab1(1),c2tab2(1)),
     2                (l2tab1(1,1),l2tab2(1))
c
31500 format(1h0,1x,4h*ok*)
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
         i9ans1=0
         do 1 i=1,4
         i2tab1(i)=i
         i9ans1=i2tab2(i)+i9ans1
    1    continue
         i9comp=10
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23300
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23500
      write(6,31530)
      go to 23400
23300 if( i9keyc.eq.1 ) go to 23500
      write(6,31520)
23400 continue
23500 i9ans1=0
c
         r9ans1=0
         do 2 j=1,4
         do 2 i=1,4
         r2tab1(i,j) = 4.e-2**j
         r9ans1=r9ans1+sqrt(r2tab2(i,j))
    2    continue
         r9comp = 0.9984
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
23800 continue
23850 r9ans1 = 0.0e00
c
         do 13 k=1,2
         do 13 j=1,2
         do 13 i=1,2
   13     d2tab1(i,j,k)=2.d-1**i+3.d-3**j+5.d-5**k
         do  3 i=1,2
  600     format(1h0,14x,13hitem-3 comp = ,4(2x,d24.17))
  601     format(1h ,21x,          6hans  =  ,4(2x,d24.17))
         d9ans1 = d2tab2(4*i-3)+d2tab2(4*i-2)+d2tab2(4*i-1)+d2tab2(4*i)
    3    continue
          d9comp = 0.48601801d0
      i9data = i9data + 1
      if( dabs( d9comp ) .eq. 0.0d00 ) go to 23950
      d9dif3 = dabs(( d9ans1-d9comp )/d9comp )
23900 if(d9dif3 - 5.0d-16)                24000,24000,24050
23950 d9dif3 = dabs(d9ans1)
      go to 23900
24000 if( i9keyc.eq.1 ) go to 24150
      write(6,31520)
      go to 24100
24050 i9errc = i9errc + 1
      if( i9keyc.eq.1 ) go to 24150
      write(6,31530)
24100 continue
24150 d9ans1 = 0.0d00
c
         c9ans1=(10.0,1.0)
         do 4 i=1,4
         c2tab1(i)=(-1.0,-0.3)**i
         c9ans1=c2tab2(i)+c9ans1
    4    continue
          c9comp=(9.6481,1.519)
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
24650 continue
24700 c9ans1=(0.0,0.0)
c
         i9ans1=0
         do 15 i=1,4
   15    l2tab2(i)=.false.
         do  5 i=1,4,3
         j = (i-1)/3+1
         l2tab1(j,j)=.true.
         l2tab2(i)=l2tab2(i).and.l2tab1(j,j)
    5    continue
         if (l2tab2(1).and.l2tab2(4))   i9ans1=1
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23000
      if(i9keyc.eq.1) go to 23100
      write(6,31510) i9data
      go to 23100
23000 if(i9keyc.eq.1) go to 23200
      write(6,31500)
      go to 23200
23100 i9errc = i9errc + 1
23200 i9ans1=0
c
         do 26 i=1,3
   26    i2tab4(i)=103-i
         call sedb01(i2tab4,i9ans1)
         i9comp=303
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23301
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23501
      write(6,31530)
      go to 23401
23301 if( i9keyc.eq.1 ) go to 23501
      write(6,31520)
23401 continue
23501 i9ans1=0
c
         r2tab4(1)=1.0
         call sedb02(r2tab4,r9ans1)
  602    format(1h ,99x,5hcomp-,f10.6)
         r9comp=1.0
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
23801 continue
23851 r9ans1 = 0.0e00
c
         i9ans1=0
         d2tab4(1)=1.012d0
         d2tab4(2)=1.024144d0
         call sedb03(d2tab4,l9ans1)
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2560
     *0
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25800
      write(6,31530)
      go to 25700
25600 if(i9keyc.eq.1) go to 25800
      write(6,31520)
25700 continue
25800 continue
c
         c2tab4(1)=(1.0,1.0)
         c2tab4(2)=(1.234e0,4.321e0)
         c2tab4(3)=(1.10101e0,3.42849e0)
         call sedb04(c2tab4,c9ans1)
          c9comp=(0.333501e+1,0.874949e+1)
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
24651 continue
24701 c9ans1=(0.0,0.0)
c
         i9ans1=0
         l2tab4(1)=.false.
         do 20 i=2,4
   20    l2tab4(i)=.not.l2tab4(i-1)
         call sedb05(l2tab4,l9ans1)
         l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2560
     *1
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25801
      write(6,31530)
      go to 25701
25601 if(i9keyc.eq.1) go to 25801
      write(6,31520)
25701 continue
25801 continue
      if(i9keyc.eq.1) go to 25900
25900 continue
c
         i9ans1=0
  694     format(1h0,99x,28hitem-11 will print  36,18,12  )
         do  6 i=1,3
         i2tab3(i)=36/i
  603    format(1h0,80x,25hjob-f11815b1 item-11 ans- i6 )
         i9ans1=i2tab3(i)+i9ans1
    6    continue
         i9comp=66
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23302
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23502
      write(6,31530)
      go to 23402
23302 if( i9keyc.eq.1 ) go to 23502
      write(6,31520)
23402 continue
23502 i9ans1=0
c
         l1val1=.true.
         rsw   = 1.23
         do  7 i=1,5
         a   = i
         r2tab3(i)=1.23*a
      l1val1=abs(r2tab3(i)-rsw)/rsw.le.5.0e-6.and.l1val1
         rsw   = rsw+1.23
    7    continue
         l9comp = .true.
         i9data = i9data + 1
      if((.not.l1val1.and..not.l9comp).or.(l1val1.and.l9comp))go to 2560
     *2
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25802
      write(6,31530)
      go to 25702
25602 if(i9keyc.eq.1) go to 25802
      write(6,31520)
25702 continue
25802 continue
c
         d2tab3(1,1)=1234.56789d-2
         d2tab3(2,1)=2345.67891d-2
         d2tab3(1,2)=3456.78912d-2
         d2tab3(2,2)=4567.89123d-2
         d2tab3(1,3)=5678.91234d-2
         d2tab3(2,3)=6789.12345d-2
         d9ans1=0.d0
         do  8 j=1,3
         do  8 i=1,2
         d9ans1=d2tab3(i,j)+d9ans1
    8    continue
         d9comp=240.7296294d0
      i9data = i9data + 1
      if( dabs( d9comp ) .eq. 0.0d00 ) go to 23951
      d9dif3 = dabs(( d9ans1-d9comp )/d9comp )
23901 if(d9dif3 - 5.0d-16)                24001,24001,24051
23951 d9dif3 = dabs(d9ans1)
      go to 23901
24001 if( i9keyc.eq.1 ) go to 24151
      write(6,31520)
      go to 24101
24051 i9errc = i9errc + 1
      if( i9keyc.eq.1 ) go to 24151
      write(6,31530)
24101 continue
24151 d9ans1 = 0.0d00
c
          c2tab3(4) = (1.0,-1.25321)
         do  9 i=4,5,2
  604    format(1h0,80x,13hitem-14  ans-,2f10.6/89x,24hcomp-  1.000000,-
     11.25321 )
         c9ans1=c9ans1+c2tab3(i)
    9    continue
          c9comp = (1.0,-1.25321)
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
24652 continue
24702 c9ans1=(0.0,0.0)
c
         i9ans1=0
         do 10 i=1,1
         l2tab3(i)=.true.
         l2tab3(i)=l2tab3(i).and.l2tab3(i)
   10    continue
         if (l2tab3(1)) i9ans1=1
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23001
      if(i9keyc.eq.1) go to 23101
      write(6,31510) i9data
      go to 23101
23001 if(i9keyc.eq.1) go to 23201
      write(6,31500)
      go to 23201
23101 i9errc = i9errc + 1
23201 i9ans1=0
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end

      subroutine sedb01(i2tab4,i9ans1)
         dimension  i2tab4(3)
         i9ans1=0
         do 1 i=1,3
         i9ans1=i9ans1+iabs(i2tab4(i))
    1    continue
         return
         end

      subroutine sedb02(r2tab4,r9ans1)
         dimension  r2tab4(1)
         do 1 i=1,1
  600    format(1h0,80x,24hjob-f11815b1 item-7 ans-,f10.6 )
         r9ans1=r2tab4(i)
    1    continue
         return
         end

      subroutine sedb03(d2tab4,l1val1)
         double precision  d2tab4,dsw
         dimension         d2tab4(2)
         logical           l1val1
         l1val1=.true.
         do 1 i=1,2
         dsw   =1.012d0**i
          l1val1=dabs(d2tab4(i)-dsw).le.5.0d-15.and.l1val1
    1    continue
         return
         end

      subroutine sedb04(c2tab4,c9ans1)
         complex     c2tab4(1),c9ans1
         do 1 i=1,3
         c9ans1=c2tab4(i)+c9ans1
    1    continue
         return
         end

      subroutine sedb05(l2tab4,l1val1)
         logical     l2tab4(4),l1val1
         l1val1=.true.
         do 1 i=2,4,2
         l1val1=l2tab4(i).and..not.l2tab4(i-1).and.l1val1
    1    continue
         return
         end
