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
          common    i06,i05,i04,i03,i02,i01,ix0001(4)
          dimension i0x(6)
c
          equivalence  (i0x(1),i06)
c
          integer   ffsb1,ffsb2,ffsb3,ffsb4,ffsb5
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
31700 format(1h+,9x,1h( ,i3,2h ),33x,l3,33x,l3 )
c
          i01 = 1
          call sfsb1 (i01)
          read(1)   i02
          i01 = i02 + i01
          i9comp = 2
      i9data = i9data + 1
      if (iabs(i01-i9comp).eq.0) go to 23300
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23500
      write(6,31530)
      go to 23400
23300 if( i9keyc.eq.1 ) go to 23500
      write(6,31520)
23400 write(6,31600) i9data,i01,i9comp
23500 i9ans1=0
c
          i02 = 2
          call sfsb1 (i02)
          call sfsb2 (2)
          i9comp = 1
      i9data = i9data + 1
      if (iabs(i02-i9comp).eq.0) go to 23301
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23501
      write(6,31530)
      go to 23401
23301 if( i9keyc.eq.1 ) go to 23501
      write(6,31520)
23401 write(6,31600) i9data,i02,i9comp
23501 i9ans1=0
c
          i03 = 3
          call sfsb1 (i03)
          i9ans1 = ffsb1(3) + i03
          i9comp = 35
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23302
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23502
      write(6,31530)
      go to 23402
23302 if( i9keyc.eq.1 ) go to 23502
      write(6,31520)
23402 write(6,31600) i9data,i9ans1,i9comp
23502 i9ans1=0
c
          isw = ffsb2(4)
          call sfsb1 (i04)
          i9ans1 = ffsb1(isw) + i04
          i9comp = 23
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23303
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23503
      write(6,31530)
      go to 23403
23303 if( i9keyc.eq.1 ) go to 23503
      write(6,31520)
23403 write(6,31600) i9data,i9ans1,i9comp
23503 i9ans1=0
c
          i05 = ffsb3(5) + i05
          call sfsb1 (i05)
          read(1)   i06
          i05 = i05 + i06
          i9comp = 10
      i9data = i9data + 1
      if (iabs(i05-i9comp).eq.0) go to 23304
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23504
      write(6,31530)
      go to 23404
23304 if( i9keyc.eq.1 ) go to 23504
      write(6,31520)
23404 write(6,31600) i9data,i05,i9comp
23504 i9ans1=0
c
          isw = ffsb4(6)
          call sfsb1 (i0x(isw))
          call  sfsb2 (5)
          i9comp = 1
      i9data = i9data + 1
      if (iabs(i06-i9comp).eq.0) go to 23305
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23505
      write(6,31530)
      go to 23405
23305 if( i9keyc.eq.1 ) go to 23505
      write(6,31520)
23405 write(6,31600) i9data,i06,i9comp
23505 i9ans1=0
c
          call sfsb3 (7,1)
          call sfsb1 (i0x(1))
          call sfsb4(isw)
          i9comp = 1
      i9data = i9data + 1
      if (iabs(i0x(1)-i9comp).eq.0) go to 23306
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23506
      write(6,31530)
      go to 23406
23306 if( i9keyc.eq.1 ) go to 23506
      write(6,31520)
23406 write(6,31600) i9data,i0x(1),i9comp
23506 i9ans1=0
c
          call sfsb3 (8,2)
          call sfsb1 (i0x(2))
          read(1)   i0x(3)
          i9ans1 = i0x(2)+i0x(3)
          i9comp = 16
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23307
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23507
      write(6,31530)
      go to 23407
23307 if( i9keyc.eq.1 ) go to 23507
      write(6,31520)
23407 write(6,31600) i9data,i9ans1,i9comp
23507 i9ans1=0
c
          call sfsb3 (9,5)
          call sfsb1 (i0x(5))
          i9ans1 = ffsb5(5) - i0x(5)
          i9comp = -1
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23308
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23508
      write(6,31530)
      go to 23408
23308 if( i9keyc.eq.1 ) go to 23508
      write(6,31520)
23408 write(6,31600) i9data,i9ans1,i9comp
23508 i9ans1=0
c
          isw = 10
          write(1)  isw
          backspace 1
          read(1)   i0x(6)
          call sfsb1 (i0x(6))
          jsw = ffsb5 (6)
          call sfsb5 (jsw)
          i9comp = 1
      i9data = i9data + 1
      if (iabs(i0x(6)-i9comp).eq.0) go to 23309
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23509
      write(6,31530)
      go to 23409
23309 if( i9keyc.eq.1 ) go to 23509
      write(6,31520)
23409 write(6,31600) i9data,i0x(6),i9comp
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

      subroutine sfsb1(ix)
          write(1)  ix
          backspace 1
          return
      end

      subroutine sfsb2(isw)
          common    i06,i05,i04,i03,i02,i01,ix0000(4)
          go to (10,20,10,10,30 ) ,isw
   10     return
   20     read(1)   jsw
          if(i02.eq.jsw)      i02=1
          return
   30     read(1)   jsw
          if(i06.eq.jsw)      i06=1
          return
      end

      integer function ffsb1 (isw)
          common    i06,i05,i04,i03,i02,i01,ix0000(4)
          ffsb1 = 0
          go to (33,33,30,40) , isw
   30     read(1)   jsw
          if(i03-jsw)         33,35,33
   33     i03 = 0
          return
  35      i03 = 35
          return
   40     read(1)   jsw
          if(i04-jsw)         43,45,43
   43     i04 = 0
          return
  45      i04 = 23
          return
      end

      integer function ffsb2 (isw)
          common    i06,i05,i04    //i03,i02,i01//ix0000(4)
          ffsb2 = isw
          i04   = isw
          return
      end

      integer function ffsb3 (isw)
          common    i06,i05//i04,i03,i02,ix0000(5)
          ffsb3 = 0
          i05   = isw
          return
      end

      integer function ffsb4 (isw)
          common    i06
          common    i05,i04,i03,i02,i01,ix0000(4)
          ffsb4 = 1
          i06   = isw
          return
      end

      subroutine sfsb3(isw,jsw)
          common    i0x(9),ix0000
          write(1)  isw
          backspace 1
          read(1)   i0x(jsw)
          return
      end

      subroutine sfsb4(isw)
          common    i0x(6),i07,ix0000(3)
          isw = 4
          read(1)   i07
          if(i0x(1)-i07)      20,10,20
   10     i0x(1) = 1
          return
   20     i0x(1) = 0
          return
      end

      integer function ffsb5 (isw)
          common    i0x(6),i07,i08,i09,i10
          ffsb5 = 0
          read(1)   i10
          if(i0x(isw)-i10)    20,10,20
   10     i0x(isw) = 1
          return
   20     i0x(isw) = 0
          return
      end

      subroutine sfsb5(jsw)
          common    i0x(6),i07,i08,ix0000(2)
          i07 = jsw
          i08 = jsw
          do 10 i=1,5
          i0x(i) = jsw
   10     continue
          return
      end
