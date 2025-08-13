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
          common    /n01/ a01 /n02/ a02 /n03/ i03 /n04/ r04
          common    /n05/ a05 /n06/ n06 /n07/ n07 /n08/ a08
          double precision    r04,ffaj3
          real      n06,i03,n07
          dimension n07(3),r04(4),a05(2),a08(2)
          logical   n08
          integer   ffaj1,a01,a02,a05,a08
c
          n08(ix) = a08(1).lt.ix
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
          call sfaj1(isw)
          i9ans1 = ffaj1(a01)
          i9comp = 63
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
          call sfaj2(isw)
          i9ans1 = ffaj1(a02)
          i9comp = 9
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
          call sfaj3(i03)
          r9ans1 = ffaj2(i03)
          r9comp = 1.5
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
          d9ans1 = ffaj3(r04(1))
          d9comp = 1.5000050010015d0
      i9data = i9data + 1
      if( dabs( d9comp ) .eq. 0.0d00 ) go to 23950
      d9dif3 = dabs(( d9ans1-d9comp )/d9comp )
23900 if(d9dif3 - 5.0e-16)                24000,24000,24050
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
          i9ans1 = a05(2)
          i9comp = 19
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
          r9ans1 = n06
          r9comp = 6.0006
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
          r9ans1 = n07(2)
          r9comp = 13.2334
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
          l9ans1 = n08(3)
          l9comp = .true.
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
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end

      subroutine sfaj1(isw)
          common    /n01/ i01
          isw = 1
          i01 = 127
          return
      end
      integer function ffaj1(ix)
          ffaj1 = ix / 2
          return
      end

      subroutine sfaj2(isw)
          common    /n02/ i02
          isw = 18
          write(18)  isw
          backspace 18
          read(18)   i02
          return
      end

      subroutine sfaj3(rx)
          rx = 3.
          return
      end
      function         ffaj2 (rx)
          ffaj2 = rx / 2.
          return
      end
      double precision function ffaj3 (dx)
          double precision    dx(1)
          ffaj3 = dx(1) / 2.d0
          return
      end
      blockdata
          common    /n04/ r04 /n05/ i05 /n06/ n06 /n07/ n07 /n08/ i08
          dimension r04(4),n07(3),i05(2),i08(2)
          real      n06,n07
          double precision  r04
          data      r04(1)/3.000010002003d00/,i05(2)/19/,n06/6.0006/,
     1              n07(2)/13.2334/,i08(1)/0/
      end
