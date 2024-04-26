      real       r9ans1,r9comp,r9dif1,r9dif2,r9dif3
          dimension  a(3),array(2,2),pq(3),xyz(2,5)
      write(6,31501)
31501 format( // 19h + justice + item +,6x,15h+ source data +,10x,
     *       21h+ field description +,10x,17h+ answer result +,12x,
     *            14h+ difference +  / )
31502 format( //19h + justice + item +,11x,15h+ source data +,17x,
     * 21h+ field description +,9x,30h+ answer + difference result +  /
     *)
      i9errc=0
      i9data=0
31550 format(1h0,3x,4h*ok*,4x,1h(,i3,2h )  )
31551 format(1h0,3x,7h*error*,1x,1h(,i3,2h )  )
31552 format(1h0,11x,1h(,i3,2h )  )
31553 format(1h0,3x,4h*ok*    )
31554 format(1h0,3x,7h*error* )
c
          read(5,101) p
  101     format(f10.1)
          r9ans1=p
          r9comp=123.4
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23500
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23600 if( r9dif1 .le. 5.e-6 )  go to 23400
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23700
23400 write(6,31550)  i9data
      go to  23700
23500 r9dif1 = abs(r9ans1)
      go to  23600
23700 continue
          write(6,201)
  201     format(1h+,20x,  25h                   +123.4,
     *                5x,  21h                f10.1,
     *                7x,  25h                    123.4)
          write(6,301) r9ans1,r9dif1
  301     format(1h ,78x,f25.1,12x,e10.3)
c
          read(5,102) rdata
  102     format(f10.2)
          r9ans1=rdata
          r9comp=-0.12
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23501
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23601 if( r9dif1 .le. 5.e-6 )  go to 23401
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23701
23401 write(6,31550)  i9data
      go to  23701
23501 r9dif1 = abs(r9ans1)
      go to  23601
23701 continue
          write(6,202)
  202     format(1h+,20x,  25h                    -0.12,
     *                5x,  21h                f10.2,
     *                7x,  25h                    -0.12)
          write(6,302) r9ans1,r9dif1
  302     format(1h ,78x,f25.2,12x,e10.3)
c
          read(5,103) data
  103     format(f10.3)
          r9ans1=data
          r9comp=563.299
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23502
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23602 if( r9dif1 .le. 5.e-6 )  go to 23402
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23702
23402 write(6,31550)  i9data
      go to  23702
23502 r9dif1 = abs(r9ans1)
      go to  23602
23702 continue
          write(6,203)
  203     format(1h+,20x,  25h                  563.299,
     *                5x,  21h                f10.3,
     *                7x,  25h                  563.299)
          write(6,303) r9ans1,r9dif1
  303     format(1h ,78x,f25.3,12x,e10.3)
c
          read(5,104) (a(i),i=1,3)
  104     format(3f10.4)
          r9ans1=a(1)
          r9comp=1.2345
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23503
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23603 if( r9dif1 .le. 5.e-6 )  go to 23403
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23703
23403 write(6,31550)  i9data
      go to  23703
23503 r9dif1 = abs(r9ans1)
      go to  23603
23703 continue
          write(6,204)
  204     format(1h+,20x,  25h                  +1.2345,
     *                5x,  21h               3f10.4,
     *                7x,  25h                   1.2345)
          write(6,254) r9ans1,r9dif1
  254     format(1h ,78x,f25.4,12x,e10.3)
          r9ans1=a(2)
          r9comp= 28.8765
      if (abs(r9comp).eq.0.0e0 )  go to  19800
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19700 if( r9dif1 .le. 5.e-6 )  go to  19900
      i9errc = i9errc + 1
      write(6,31554)
      go to  19600
19900 write(6,31553)
      go to  19600
19800 r9dif1 = abs ( r9ans1 )
      go to  19700
19600 continue
          write(6,304)
  304     format(1h+,20x,  25h                 +28.8765,
     *                5x,  21h                     ,
     *                7x,  25h                  28.8765)
          write(6,354) r9ans1,r9dif1
  354     format(1h ,78x,f25.4,12x,e10.3)
          r9ans1=a(3)
          r9comp= 999.999
      if (abs(r9comp).eq.0.0e0 )  go to  19801
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19701 if( r9dif1 .le. 5.e-6 )  go to  19901
      i9errc = i9errc + 1
      write(6,31554)
      go to  19601
19901 write(6,31553)
      go to  19601
19801 r9dif1 = abs ( r9ans1 )
      go to  19701
19601 continue
          write(6,404)
  404     format(1h+,20x,  25h                 +999.999,
     *                5x,  21h                     ,
     *                7x,  25h                  999.999)
          write(6,454) r9ans1,r9dif1
  454     format(1h ,78x,f25.3,12x,e10.3)
c
          read(5,105)((array(i,j),i=1,2),j=1,2)
  105     format(4f15.5)
          r9ans1=array(1,1)
          r9comp=- 11.35472
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23504
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23604 if( r9dif1 .le. 5.e-6 )  go to 23404
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23704
23404 write(6,31550)  i9data
      go to  23704
23504 r9dif1 = abs(r9ans1)
      go to  23604
23704 continue
          write(6,205)
  205     format(1h+,20x,  25h                -11.35472,
     *                5x,  21h               4f15.5,
     *                7x,  25h                -11.35472)
          write(6,255) r9ans1,r9dif1
  255     format(1h ,78x,f25.5,12x,e10.3)
          r9ans1=array(2,1)
          r9comp=-0.31415
      if (abs(r9comp).eq.0.0e0 )  go to  19802
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19702 if( r9dif1 .le. 5.e-6 )  go to  19902
      i9errc = i9errc + 1
      write(6,31554)
      go to  19602
19902 write(6,31553)
      go to  19602
19802 r9dif1 = abs ( r9ans1 )
      go to  19702
19602 continue
          write(6,305)
  305     format(1h+,20x,  25h                 -0.31415,
     *                5x,  21h                     ,
     *                7x,  25h                 -0.31415)
          write(6,355) r9ans1,r9dif1
  355     format(1h ,78x,f25.5,12x,e10.3)
          r9ans1=array(1,2)
          r9comp=-27.18285
      if (abs(r9comp).eq.0.0e0 )  go to  19803
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19703 if( r9dif1 .le. 5.e-6 )  go to  19903
      i9errc = i9errc + 1
      write(6,31554)
      go to  19603
19903 write(6,31553)
      go to  19603
19803 r9dif1 = abs ( r9ans1 )
      go to  19703
19603 continue
          write(6,405)
  405     format(1h+,20x,  25h                -27.18285,
     *                5x,  21h                     ,
     *                7x,  25h                -27.18285)
          write(6,455) r9ans1,r9dif1
  455     format(1h ,78x,f25.5,12x,e10.3)
          r9ans1=array(2,2)
          r9comp=-1.41421
      if (abs(r9comp).eq.0.0e0 )  go to  19804
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19704 if( r9dif1 .le. 5.e-6 )  go to  19904
      i9errc = i9errc + 1
      write(6,31554)
      go to  19604
19904 write(6,31553)
      go to  19604
19804 r9dif1 = abs ( r9ans1 )
      go to  19704
19604 continue
          write(6,505)
  505     format(1h+,20x,  25h                 -1.41421,
     *                5x,  21h                     ,
     *                7x,  25h                 -1.41421)
          write(6,555) r9ans1,r9dif1
  555     format(1h ,78x,f25.5,12x,e10.3)
c
          read(5,106) ((array(i,j),i=1,2),j=1,2)
  106     format(4f15.6)
          r9ans1=array(1,1)
          r9comp=1.999999
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23505
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23605 if( r9dif1 .le. 5.e-6 )  go to 23405
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23705
23405 write(6,31550)  i9data
      go to  23705
23505 r9dif1 = abs(r9ans1)
      go to  23605
23705 continue
          write(6,206)
  206     format(1h+,20x,  25h                 1.999999,
     *                5x,  21h               4f15.6,
     *                7x,  25h                 1.999999)
          write(6,256) r9ans1,r9dif1
  256     format(1h ,78x,f25.6,12x,e10.3)
          r9ans1=array(2,1)
          r9comp=9.888889
      if (abs(r9comp).eq.0.0e0 )  go to  19805
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19705 if( r9dif1 .le. 5.e-6 )  go to  19905
      i9errc = i9errc + 1
      write(6,31554)
      go to  19605
19905 write(6,31553)
      go to  19605
19805 r9dif1 = abs ( r9ans1 )
      go to  19705
19605 continue
          write(6,306)
  306     format(1h+,20x,  25h                 9.888889,
     *                5x,  21h                     ,
     *                7x,  25h                 9.888889)
          write(6,356) r9ans1,r9dif1
  356     format(1h ,78x,f25.6,12x,e10.3)
          r9ans1=array(1,2)
          r9comp=0.123456
      if (abs(r9comp).eq.0.0e0 )  go to  19806
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19706 if( r9dif1 .le. 5.e-6 )  go to  19906
      i9errc = i9errc + 1
      write(6,31554)
      go to  19606
19906 write(6,31553)
      go to  19606
19806 r9dif1 = abs ( r9ans1 )
      go to  19706
19606 continue
          write(6,406)
  406     format(1h+,20x,  25h                 0.123456,
     *                5x,  21h                     ,
     *                7x,  25h                 0.123456)
          write(6,256) r9ans1,r9dif1
          r9ans1=array(2,2)
          r9comp=3.876543
      if (abs(r9comp).eq.0.0e0 )  go to  19807
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19707 if( r9dif1 .le. 5.e-6 )  go to  19907
      i9errc = i9errc + 1
      write(6,31554)
      go to  19607
19907 write(6,31553)
      go to  19607
19807 r9dif1 = abs ( r9ans1 )
      go to  19707
19607 continue
          write(6,456)
  456     format(1h+,20x,  25h                 3.876543,
     *                5x,  21h                     ,
     *                7x,  25h                 3.876543)
          write(6,256) r9ans1,r9dif1
c
          read(5,107) pq(2)
  107     format(f15.3)
          r9ans1=pq(2)
          r9comp=0.0099999
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23506
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23606 if( r9dif1 .le. 5.e-6 )  go to 23406
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23706
23406 write(6,31550)  i9data
      go to  23706
23506 r9dif1 = abs(r9ans1)
      go to  23606
23706 continue
          write(6,207)
  207     format(1h+,20x,  25h                0.0099999,
     *                5x,  21h                f15.3,
     *                7x,  25h                0.0099999)
          write(6,257) r9ans1,r9dif1
  257     format(1h ,78x,f25.7,12x,e10.3)
c
          read(5,108) pq(3),xyz(1,5)
  108     format(2f15.1)
          r9ans1=pq(3)
          r9comp=-0.01234567
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23507
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23607 if( r9dif1 .le. 5.e-6 )  go to 23407
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23707
23407 write(6,31550)  i9data
      go to  23707
23507 r9dif1 = abs(r9ans1)
      go to  23607
23707 continue
          write(6,208)
  208     format(1h+,20x,  25h              -0.01234567,
     *                5x,  21h               2f15.1,
     *                7x,  25h              -0.01234567)
          write(6,258) r9ans1,r9dif1
  258     format(1h ,78x,f25.8,12x,e10.3)
          r9ans1=xyz(1,5)
          r9comp=-0.00999999
      if (abs(r9comp).eq.0.0e0 )  go to  19808
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19708 if( r9dif1 .le. 5.e-6 )  go to  19908
      i9errc = i9errc + 1
      write(6,31554)
      go to  19608
19908 write(6,31553)
      go to  19608
19808 r9dif1 = abs ( r9ans1 )
      go to  19708
19608 continue
          write(6,308)
  308     format(1h+,20x,  25h              -0.00999999,
     *                5x,  21h                     ,
     *                7x,  25h              -0.00999999)
          write(6,258) r9ans1,r9dif1
c
          read(5,109) xyz(2,3),xyz(2,5)
  109     format(2f15.5)
          r9ans1=xyz(2,3)
          r9comp=0.001299999
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23508
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23608 if( r9dif1 .le. 5.e-6 )  go to 23408
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23708
23408 write(6,31550)  i9data
      go to  23708
23508 r9dif1 = abs(r9ans1)
      go to  23608
23708 continue
          write(6,209)
  209     format(1h+,20x,  25h              0.001299999,
     *                5x,  21h               2f15.5,
     *                7x,  25h              0.001299999)
          write(6,259) r9ans1,r9dif1
  259     format(1h ,78x,f25.9,12x,e10.3)
          r9ans1=xyz(2,5)
          r9comp=0.09876543
      if (abs(r9comp).eq.0.0e0 )  go to  19809
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19709 if( r9dif1 .le. 5.e-6 )  go to  19909
      i9errc = i9errc + 1
      write(6,31554)
      go to  19609
19909 write(6,31553)
      go to  19609
19809 r9dif1 = abs ( r9ans1 )
      go to  19709
19609 continue
          write(6,309)
  309     format(1h+,20x,  25h               0.09876543,
     *                5x,  21h                     ,
     *                7x,  25h               0.09876543)
          write(6,249)  r9ans1,r9dif1
  249     format(1h ,78x,f25.8,12x,e10.3)
c
          psum=+0.0098765432
      i9data = i9data + 1
      write(6,31552) i9data
          write(6,210)
  210     format(1h+,20x,  25h            +0.0098765432,
     *                5x,  21h               f20.10,
     *                7x,  25h             0.0098765432)
          write(6,110) psum
  110     format(1h ,78x,5x,f20.10)
c
          qsum=-0.123456789
      i9data = i9data + 1
      write(6,31552) i9data
          write(6,211)
  211     format(1h+,20x,  25h             -0.123456789,
     *                5x,  21h                f20.9,
     *                7x,  25h             -0.123456789)
          write(6,111) qsum
  111     format(1h ,78x,5x,f20.9)
c
          bsum=0.01010101
      i9data = i9data + 1
      write(6,31552) i9data
          write(6,212)
  212     format(1h+,20x,  25h               0.01010101,
     *                5x,  21h                f15.8,
     *                7x,  25h               0.01010101)
          write(6,112) bsum
  112     format(1h ,78x,10x,f15.8)
c
          a(1)=+0.4545454
          a(2)=+1.7777777
          a(3)=+0.9999999
      i9data = i9data + 1
      write(6,31552) i9data
          write(6,213)
  213     format(1h+,20x,  10h a(3)     ,20x,  21h               3f15.7)
          write(6,263)
  263     format(1h ,      20h source             ,
     *           50h+0.4545454,+1.7777777,+0.9999999                  )
          write(6,313)
  313     format(1h ,      20h comp               ,
     *           50h      0.4545454      1.7777777      0.9999999     )
          write(6,113)  (a(i),i=1,3)
  113     format(1h ,      20h ans                ,3f15.7)
c
          array(1,1)=- 0.999999
          array(2,1)=-0.9876547
          array(1,2)=-0.2344234
          array(2,2)=-0.0023232
      i9data = i9data + 1
      write(6,31552) i9data
          write(6,214)
  214     format(1h+,20x,  11h array(2,2),19x, 21h               4f15.6)
          write(6,264)
  264     format(1h ,      20h source             ,
     *           50h-0.999999,-0.9876547,-0.2344234,-0.0023232        )
          write(6,314)
  314     format(1h ,      20h comp               ,
     * 60h      -0.999999      -0.987655      -0.234423      -0.002323)
          write(6,114) ((array(i,j),i=1,2),j=1,2)
  114     format(1h ,      20h ans                ,4f15.6)
c
          array(1,1)= 2.345678
          array(2,1)=0.0
          array(1,2)=0.9876543
          array(2,2)=4.872567
      i9data = i9data + 1
      write(6,31552) i9data
          write(6,215)
  215     format(1h+,20x,  11h array(2,2),19x, 21h               4f15.5)
          write(6,265)
  265     format(1h ,      20h source             ,
     *           50h2.345678,0.0,0.9876543,4.872567                   )
          write(6,315)
  315     format(1h ,      20h comp               ,
     * 60h        2.34568        0.0            0.98765        4.87257)
          write(6,115) ((array(i,j),i=1,2),j=1,2)
  115     format(1h ,      20h ans                ,4f15.5)
c
          pq(2)=+ 23.4567
      i9data = i9data + 1
      write(6,31552) i9data
          write(6,216)
  216     format(1h+,20x,  25h                 +23.4567,
     *                5x,  21h                 f7.4,
     *                7x,  25h                  23.4567)
          write(6,116) pq(2)
  116     format(1h ,78x,18x,f7.4)
c
          array(2,2)=-123.4567
      i9data = i9data + 1
      write(6,31552) i9data
          write(6,217)
  217     format(1h+,20x,  25h                -123.4567,
     *                5x,  21h                f10.3,
     *                7x,  25h                 -123.457)
          write(6,117) array(2,2)
  117     format(1h ,78x,15x,f10.3)
c
          xyz(1,3)=123.456
      i9data = i9data + 1
      write(6,31552) i9data
          write(6,218)
  218     format(1h+,20x,  25h                  123.456,
     *                5x,  21h                f10.2,
     *                7x,  25h                   123.46)
          write(6,118) xyz(1,3)
  118     format(1h ,78x,15x,f10.2)
      stop
      end
