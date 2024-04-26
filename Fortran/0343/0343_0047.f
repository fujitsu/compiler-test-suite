          implicit  integer (a),
     1              real (j) ,
     2              double precision (m) ,
     3              logical (y)
c
c
      integer    i9ans1,i9comp,l9eans,l9ecom
      real       r9ans1,r9comp,r9dif3
      logical    l9ans1,l9comp
      equivalence     (l9eans,l9ans1),(l9ecom,l9comp)
      double precision   d9ans1,d9comp,d9dif3
      complex*16 cd9ans,cd9com,cd9df9
      double precision   d9dim1(2),d9dim2(2),d9df99(2)
      equivalence        (cd9ans,d9dim1(1)),(cd9com,d9dim2(1)),
     *                    (cd9df9,d9df99(1))
          dimension a1k006(10) , j1k007 (20) , m1k008(30) , y1k010 (50)
31600 format(1h+, 9x,1h( ,i3,2h ),21x,i15,21x,i15 )
31610 format(1h+,9x,1h(, i3, 2h ),21x,e15.8,21x,e15.8,30x,e15.8 )
31700 format(1h+,9x,1h( ,i3,2h ),33x,l3,33x,l3 )
31620 format(1h+,9x,1h(, i3,2h ),12x,d24.17,12x,d24.17,21x,d24.17 )
31660 format(1h+,9x,1h(,i3,2h ), 12x,d24.17,12x,d24.17,21x,d24.17 /
     *      28x,d24.17,12x,d24.17,21x,d24.17 )
31670 format(1h ,27x,d24.17,12x,d24.17,21x,d24.17 )
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
          call  skhf1 (a0k001)
          i9comp = 100
      i9data = i9data + 1
      if (iabs(a0k001-i9comp).eq.0) go to 23300
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23500
      write(6,31530)
      go to 23400
23300 if( i9keyc.eq.1 ) go to 23500
      go to 23500
23400 write(6,31600) i9data,a0k001,i9comp
23500 i9ans1=0
c
          call  skhf2 (j0k002)
          r9comp = 3.1415e01
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23650
      r9dif3 = abs(( j0k002 - r9comp )/r9comp)
23600 if(r9dif3 - 5.0e-6)                23700,23700,23750
23650 r9dif3 = abs(j0k002)
      go to 23600
23700 if( i9keyc.eq.1) go to 23850
      go to 23850
23750 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23850
      write(6,31530)
23800 write(6,31610) i9data,j0k002,r9comp,r9dif3
23850 r9ans1 = 0.0e00
c
          call  skhf3 (y0k003)
          l9comp = .true.
      i9data = i9data + 1
      if((.not.y0k003.and..not.l9comp).or.(y0k003.and.l9comp))go to 2560
     *0
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25800
      write(6,31530)
      go to 25700
25600 if(i9keyc.eq.1) go to 25800
      go to 25800
25700 write(6,31700) i9data,y0k003,l9comp
25800 continue
c
          call  skhf4 (m0k004)
          d9comp = 8521.129105320184d+6
      i9data = i9data + 1
      if( dabs( d9comp ) .eq. 0.0d00 ) go to 23950
      d9dif3 = dabs(( m0k004-d9comp )/d9comp )
23900 if(d9dif3 - 5.0d-16)                24000,24000,24050
23950 d9dif3 = dabs(m0k004)
      go to 23900
24000 if( i9keyc.eq.1 ) go to 24150
      go to 24150
24050 i9errc = i9errc + 1
      if( i9keyc.eq.1 ) go to 24150
      write(6,31530)
24100 write(6,31620) i9data,m0k004,d9comp,d9dif3
24150 d9ans1 = 0.0d00
c
          call  skhf6 (9,a1k006)
          i9comp = 200
      i9data = i9data + 1
      if (iabs(a1k006(9)-i9comp).eq.0) go to 23301
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23501
      write(6,31530)
      go to 23401
23301 if( i9keyc.eq.1 ) go to 23501
      go to 23501
23401 write(6,31600) i9data,a1k006(9),i9comp
23501 i9ans1=0
c
          call  skhf7 (16,j1k007)
          r9comp =.31415e-01
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23651
      r9dif3 = abs(( j1k007(16) - r9comp )/r9comp)
23601 if(r9dif3 - 5.0e-6)                23701,23701,23751
23651 r9dif3 = abs(j1k007(16))
      go to 23601
23701 if( i9keyc.eq.1) go to 23851
      go to 23851
23751 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23851
      write(6,31530)
23801 write(6,31610) i9data,j1k007(16),r9comp,r9dif3
23851 r9ans1 = 0.0e00
c
          call  skhf8 (45,y1k010)
          l9comp = .true.
      i9data = i9data + 1
      if((.not.y1k010(45).and..not.l9comp).or.(y1k010(45).and.l9comp))go
     * to 25601
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25801
      write(6,31530)
      go to 25701
25601 if(i9keyc.eq.1) go to 25801
      go to 25801
25701 write(6,31700) i9data,y1k010(45),l9comp
25801 continue
c
          call  skhf9 (29,m1k008)
          d9comp = 4970.422010102415d+4
      i9data = i9data + 1
      if( dabs( d9comp ) .eq. 0.0d00 ) go to 23951
      d9dif3 = dabs(( m1k008(29)-d9comp )/d9comp )
23901 if(d9dif3 - 5.0d-16)                24001,24001,24051
23951 d9dif3 = dabs(m1k008(29))
      go to 23901
24001 if( i9keyc.eq.1 ) go to 24151
      go to 24151
24051 i9errc = i9errc + 1
      if( i9keyc.eq.1 ) go to 24151
      write(6,31530)
24101 write(6,31620) i9data,m1k008(29),d9comp,d9dif3
24151 d9ans1 = 0.0d00
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end

      subroutine skhf1(b0k001)
          implicit  integer  (b)
          b0k001 = 100
  11      return
          end

      subroutine skhf2(k0k002)
          implicit  real  (k)
          k0k002 = 3.1415e01
   12     return
          end

      subroutine skhf3(z0k003)
          implicit logical (z)
          z0k003 =.true.
  13      return
          end

      subroutine skhf4(n0k004)
          implicit double precision  (n)
          n0k004 = 8521.129105320184d+6
  14      return
          end

      subroutine skhf6(bc,b0k006)
          implicit integer (b)
          dimension b0k006 (10)
          b0k006 (bc)  = 200
  16      return
          end

      subroutine skhf7(ic,k0k007)
          implicit  real (k)
          dimension k0k007 (20)
          k0k007 (ic) =.31415e-01
  17      return
          end

      subroutine skhf8(ic,p1k010)
          implicit logical  (p)
          dimension p1k010 (50)
          p1k010 (ic) = .true.
  18      return
          end

      subroutine skhf9(ic,q1k009)
          implicit double precision (q)
          dimension q1k009 (30)
          q1k009 (ic) = 4970.422010102415d+4
  19      return
          end
