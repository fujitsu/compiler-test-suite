      complex    c9ans1,c9comp,c9df9
      real       r9dif5,r9dif6,r9dif7,r9dif8,r9dif9,r9df10,r9df11
      real       r9dim1(2),r9dim2(2),r9df99(2)
      equivalence        (c9ans1,r9dim1(1)),(c9comp,r9dim2(1)),
     *                   (c9df9,r9df99(1))
         double precision  d1val1,d1val2,d1,d2
         complex     c1val1,c1val2,c1,c2,ufuj01,ufuj02,ufuj03,ufuj04,
     1               ufuj05,ufuj06,ufuj07,ufuj08,ufuj09,ufuj10,ufuj11,
     2               ufuj12,ufuj13,ufuj14
         ufuj01(c1) = c1+(7725.0,-152.0)
         ufuj02(c1) = c1+(5.0,7.0)*c1/c1+(228.0,55.0)
         ufuj03(c1,c2)= c1+c2+c1val1+(1.11101,1.234)
         ufuj04(c1,c2)= c1+c2+c1+c1val1+(1.2,3.4)+c1val2+(-1.23,-5.9)
         ufuj05(c1,c2)= c1+c2+c1val1+c2+c1+c1val2-(c2+c2)+(2.41,5.5)
         ufuj06(i1)= i1+i1val1+3912
         ufuj07(i1,i2)= i1+i1val2-i1val1+i2+33-i1val1
         ufuj08(i1,i2)= i1*i2+i1val1+i1val2+32767-i1val1*i2-601
         ufuj09(r1)= r1*r1val2**2.0
         ufuj10(r1,r2)= r1+r2+r1val1+r1*2.11
         ufuj11(r1,r2)= r1-r2+r1val1+r1val2+1.2*1.1
         ufuj12(d1)= d1**2.0
         ufuj13(d1)= d1+d1val1+1.23444329711d0
         ufuj14(d1,d2)= 1.9928711d0+d1+d1val1+d2
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
31640 format(1h+,9x,1h(,i3,2h ),21x,e15.8,21x,e15.8,30x,e15.8 /
     *      37x,e15.8,21x,e15.8,30x,e15.8 )
31650 format(1h ,36x,e15.8,21x,e15.8,30x,e15.8 )
c
         c1val1=(1.21e+2,21.e0)
         c9ans1= ufuj01(c1val1)
         c9comp=(7846.0,-131.0)
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
24650 write(6,31640) i9data
24700 c9ans1=(0.0,0.0)
c
         c9ans1=ufuj02((2.5e0,1.211e0))
         c9comp=(235.5,63.211)
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
24651 write(6,31640) i9data
24701 c9ans1=(0.0,0.0)
c
         c1val1=(12.5,11.49)
         c1val2=(71.2,112.1)
          c9ans1 = ufuj03(c1val1,c1val2)
         c9comp=(97.31102,136.3140)
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
24652 write(6,31640) i9data
24702 c9ans1=(0.0,0.0)
c
         c1val1=(12.9,-11.1)
         c1val2=(9.2,7.1)
         c9ans1=ufuj04((1.12,9.0),(-70.14,4.71))
         c9comp=(-45.83,16.21)
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
24653 write(6,31640) i9data
24703 c9ans1=(0.0,0.0)
c
         c1val1=(78.91,19.87)
         c1val2=(1.278,6.1)
         c9ans1=ufuj05((-23.44,-1.6),c1val1)
         c9comp=(35.71798,28.26997)
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24504 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24554
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-6) 24504,24504,24604
24554 if (abs(r9df99(lq))-5.0e-6) 24504,24604,24604
24504 continue
      if (i9keyc.eq.1) go to 24704
      write(6,31520)
      go to 24654
24604 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24704
      write(6,31530)
24654 write(6,31640) i9data
24704 c9ans1=(0.0,0.0)
c
         i1val1=-11
         c9ans1=ufuj06(41)
         c9comp=(3942.,0.)
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24505 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24555
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-6) 24505,24505,24605
24555 if (abs(r9df99(lq))-5.0e-6) 24505,24605,24605
24505 continue
      if (i9keyc.eq.1) go to 24705
      write(6,31520)
      go to 24655
24605 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24705
      write(6,31530)
24655 write(6,31640) i9data
24705 c9ans1=(0.0,0.0)
c
         i1val1=1011
         i1val2=9999
         c9ans1=ufuj07(51,123)
         c9comp=(8184.,0.)
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24506 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24556
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-6) 24506,24506,24606
24556 if (abs(r9df99(lq))-5.0e-6) 24506,24606,24606
24506 continue
      if (i9keyc.eq.1) go to 24706
      write(6,31520)
      go to 24656
24606 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24706
      write(6,31530)
24656 write(6,31640) i9data
24706 c9ans1=(0.0,0.0)
c
         i1val1=671
         i1val2=-19
         c9ans1=ufuj08(77,i1val2)
         c9comp=(44104.0,0.0)
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24507 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24557
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-6) 24507,24507,24607
24557 if (abs(r9df99(lq))-5.0e-6) 24507,24607,24607
24507 continue
      if (i9keyc.eq.1) go to 24707
      write(6,31520)
      go to 24657
24607 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24707
      write(6,31530)
24657 write(6,31640) i9data
24707 c9ans1=(0.0,0.0)
c
         r1val1=1.23
         r1val2=3.5
         c9ans1=ufuj09(r1val1)
         c9comp=(0.150675e+2,0.e0)
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24508 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24558
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-6) 24508,24508,24608
24558 if (abs(r9df99(lq))-5.0e-6) 24508,24608,24608
24508 continue
      if (i9keyc.eq.1) go to 24708
      write(6,31520)
      go to 24658
24608 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24708
      write(6,31530)
24658 write(6,31640) i9data
24708 c9ans1=(0.0,0.0)
c
         r1val1=4.1
         r1val2=3.3
         c9ans1= ufuj10(r1val2,0.0)
         c9comp=(0.14363e+2,0.e0)
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24509 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24559
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-6) 24509,24509,24609
24559 if (abs(r9df99(lq))-5.0e-6) 24509,24609,24609
24509 continue
      if (i9keyc.eq.1) go to 24709
      write(6,31520)
      go to 24659
24609 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24709
      write(6,31530)
24659 write(6,31640) i9data
24709 c9ans1=(0.0,0.0)
c
         r1val1= 3.4142
         r1val2= 1.414e+5
         c9ans1=ufuj11(r1val2,r1val1)
         c9comp=(282801.2,0.0)
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24510 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24560
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-6) 24510,24510,24610
24560 if (abs(r9df99(lq))-5.0e-6) 24510,24610,24610
24510 continue
      if (i9keyc.eq.1) go to 24710
      write(6,31520)
      go to 24660
24610 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24710
      write(6,31530)
24660 write(6,31640) i9data
24710 c9ans1=(0.0,0.0)
c
         d1val1=1.43d0
         c9ans1=ufuj12(d1val1)
         c9comp=(2.0449,0.0)
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24511 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24561
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-6) 24511,24511,24611
24561 if (abs(r9df99(lq))-5.0e-6) 24511,24611,24611
24511 continue
      if (i9keyc.eq.1) go to 24711
      write(6,31520)
      go to 24661
24611 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24711
      write(6,31530)
24661 write(6,31640) i9data
24711 c9ans1=(0.0,0.0)
c
         d1val1=9.43211312958821d0
         d1val2=-5.241132d1
         c9ans1=ufuj13(d1val2)
         c9comp=(-.4174476e+2,0.e0)
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24512 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24562
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-6) 24512,24512,24612
24562 if (abs(r9df99(lq))-5.0e-6) 24512,24612,24612
24512 continue
      if (i9keyc.eq.1) go to 24712
      write(6,31520)
      go to 24662
24612 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24712
      write(6,31530)
24662 write(6,31640) i9data
24712 c9ans1=(0.0,0.0)
c
         d1val1=1.246799123001d0
         c9ans1=ufuj14(-4.2132467109d0,-2.1136d0)
         c9comp=(-3.087176,0.0)
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24513 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24563
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-6) 24513,24513,24613
24563 if (abs(r9df99(lq))-5.0e-6) 24513,24613,24613
24513 continue
      if (i9keyc.eq.1) go to 24713
      write(6,31520)
      go to 24663
24613 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24713
      write(6,31530)
24663 write(6,31640) i9data
24713 c9ans1=(0.0,0.0)
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
