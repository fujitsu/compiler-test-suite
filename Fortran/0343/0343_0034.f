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
         logical     l2tab1(2,2)
         dimension   i2tab1(9),i2tab2(3,3),r2tab1(3,3)
         data        j/1/
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
31700 format(1h+,9x,1h( ,i3,2h ),33x,l3,33x,l3 )
c
         i=1
        i2tab2(1*i+1,1*i+1)=1
        i9ans1=i2tab2(2,2)
        i9comp=1
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
         i=3
         i2tab2(2*i-4,2*i-5)=45
         i9ans1=i2tab2(2,1)
         i9comp=45
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
         i=1
         r2tab1(2*i,1*i)=1.2345
         r9ans1=r2tab1(2,1)
         r9comp=1.2345
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
         i=1
         r2tab1(i,i)=1.0
         r9ans1=r2tab1(1,1)
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
      write(6,31610) i9data,r9ans1,r9comp,r9dif3
23801 continue
23851 r9ans1 = 0.0e00
c
         i=-2
         r2tab1(i+3,i+4)=-1.2345
         r9ans1=r2tab1(1,2)
         r9comp=-1.2345
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
         i9ans1=0
         i=2
         l2tab1(i-1,i-1)=.true.
         if (l2tab1(1,1)) i9ans1=1
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23000
      if(i9keyc.eq.1) go to 23100
      write(6,31510) i9data
      go to 23100
23000 if(i9keyc.eq.1) go to 23200
      write(6,31520)
      go to 23200
23100 i9errc = i9errc + 1
23200 i9ans1=0
c
         i9ans1=0
         l2tab1(2,2)=.true.
         if(l2tab1(2,2)) i9ans1=1
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23001
      if(i9keyc.eq.1) go to 23101
      write(6,31510) i9data
      go to 23101
23001 if(i9keyc.eq.1) go to 23201
      write(6,31520)
      go to 23201
23101 i9errc = i9errc + 1
23201 i9ans1=0
c
         i9ans1=0
         i=0
         l2tab1(2*i+1,3*i+2)=.false.
         if(.not.l2tab1(1,2))    i9ans1=1
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23002
      if(i9keyc.eq.1) go to 23102
      write(6,31510) i9data
      go to 23102
23002 if(i9keyc.eq.1) go to 23202
      write(6,31520)
      go to 23202
23102 i9errc = i9errc + 1
23202 i9ans1=0
c
         do 1 i=1,9
    1    i2tab1(i)=i*10
         i9ans1=0
         do 2 i=1,9
    2    i9ans1=i9ans1+i2tab1(i)
         i9comp=450
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
         i2tab1(j)=1
         i9ans1=i2tab1(1)
         i9comp=1
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
         i=3
         k=2
         i2tab2(i,k)=3232
         i9ans1=i2tab2(3,2)
         i9comp=3232
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23304
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23504
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23404
23304 if( i9keyc.eq.1 ) go to 23504
      write(6,31520)
23404 continue
23504 i9ans1=0
c
         read(5,500)  i,k
  500    format(2i5)
         i2tab2(i,k)=23000
         i9ans1=i2tab2(2,3)
         i9comp=23000
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23305
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23505
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23405
23305 if( i9keyc.eq.1 ) go to 23505
      write(6,31520)
23405 continue
23505 i9ans1=0
c
         call seab03(1,i9ans1)
         i9comp=1
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23306
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23506
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23406
23306 if( i9keyc.eq.1 ) go to 23506
      write(6,31520)
23406 continue
23506 i9ans1=0
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end

      subroutine seab03(i,i9ans1)
         dimension i2tab1(1,1)
         i2tab1(i,i)=1
         i9ans1=i2tab1(1,1)
         return
         end
