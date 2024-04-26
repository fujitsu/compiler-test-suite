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
         double precision     dr1du1,dr1mo1,drfun1,drfun2,drfun3
         complex              c1dum1,c1mon1,cfun1,cfun2,cfun3
         logical              l1dum1,lfun1,lfun2
         data       dr1mo1/15.0d0/,c1mon1/(5.,10.)/,i1mon1/1/
c
      drfun1(dr1du1) = dr1mo1**i1mon1*dr1du1/1.d0+(dr1mo1+dr1du1)/dr1du1
      drfun2(dr1du1) = drfun1(1.d0)*1.d0*dr1mo1+drfun1(dr1du1)+dr1du1
      drfun3(dr1du1) = dsqrt(961.d0)/drfun1(1.d0)*(dr1du1+95.d0)*dr1mo1
c
      cfun1(c1dum1) = c1mon1**i1mon1+c1mon1/c1dum1-(1.,-1.)*c1dum1
      cfun2(c1dum1) = (c1dum1-c1mon1)*(1.,1.)/(c1dum1+(1.,1.)+c1mon1)
     1                                                   +cfun1((1.,1.))
      cfun3(c1dum1) = cfun1((1.,1.))/(c1dum1-csqrt((1.,0.))**i1mon1
     1                                         ) +cfun1((1.,1.))
c
      lfun1(dr1du1,l1dum1) = dr1du1*dr1mo1 .ge. 1.d0.or. l1dum1
      lfun2(dr1du1) = drfun1(1.d0).lt. dr1du1/1.d0*dsqrt(1.d0)
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
      d9ans1 = drfun1(3.0d0)
      d9comp = 51.0d0
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
      write(6,31620) i9data,d9ans1,d9comp,d9dif3
24100 continue
24150 d9ans1 = 0.0d00
c
      d9ans1 = drfun2(1.0d0)
      d9comp = 497.0d0
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
      write(6,31620) i9data,d9ans1,d9comp,d9dif3
24101 continue
24151 d9ans1 = 0.0d00
c
      d9ans1 = drfun3(5.0d0)
      d9comp = 1500.0d0
      i9data = i9data + 1
      if( dabs( d9comp ) .eq. 0.0d00 ) go to 23952
      d9dif3 = dabs(( d9ans1-d9comp )/d9comp )
23902 if(d9dif3 - 5.0d-16)                24002,24002,24052
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
      c9ans1=cfun1((1.,1.))
      c9comp = (10.5,12.5)
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
      c1mon1 = (1.,1.)
      c9ans1 = cfun2((2.,0.))
      c9comp = (.4,.8)
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
      c9ans1 = cfun3((1.,1.))
      c9comp = (1.,1.)
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
      l9ans1 = lfun1(1.d0,.false.)
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
      l9ans1 = lfun2(1.d0)
      l9comp = .false.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2560
     *1
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25801
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25701
25601 if(i9keyc.eq.1) go to 25801
      write(6,31520)
25701 continue
25801 continue
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
