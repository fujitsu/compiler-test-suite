      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
      real       r9ans1,r9comp,r9dif1,r9dif2,r9dif3
          integer   ffkb1
          external  ffkb1,ffkb2,sfkb6,sfkb9
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
c
          ival1 = 146
          call sfkb1(ffkb1,ival1)
          i9ans1 = ival1
          i9comp = 146**2-146
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23300
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23500
      write(6,31530)
      go to 23400
23300 if( i9keyc.eq.1 ) go to 23500
      write(6,31520)
23400 write(6,31600) i9data 
23500 i9ans1=0
c
          ival1 = 237
          call sfkb2(ffkb1,ival1,4327)
          i9ans1 = ival1
          i9comp = 237**2-237+4327
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23301
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23501
      write(6,31530)
      go to 23401
23301 if( i9keyc.eq.1 ) go to 23501
      write(6,31520)
23401 write(6,31600) i9data 
23501 i9ans1=0
c
          rval1 = 12.3
          call sfkb3(ffkb2,rval1)
          r9ans1 = rval1
          r9comp = exp(12.3)/12.3
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
23800 write(6,31610) i9data 
23850 r9ans1 = 0.0e00
c
          rval1 = 4.7
          call sfkb4(ffkb2,rval1,56.77)
          r9ans1 = rval1
          r9comp = exp(4.7)/4.7*56.77
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
23801 write(6,31610) i9data 
23851 r9ans1 = 0.0e00
c
          ival1 = -423
          call sfkb5(sfkb6,ival1)
          i9ans1 = ival1
          i9comp = 323
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23302
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23502
      write(6,31530)
      go to 23402
23302 if( i9keyc.eq.1 ) go to 23502
      write(6,31520)
23402 write(6,31600) i9data 
23502 i9ans1=0
c
          ival1 = 114
          call sfkb7(sfkb6,ival1,345)
          i9ans1 = ival1
          i9comp = 231
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23303
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23503
      write(6,31530)
      go to 23403
23303 if( i9keyc.eq.1 ) go to 23503
      write(6,31520)
23403 write(6,31600) i9data 
23503 i9ans1=0
c
          rval1 = 25.673
          call sfkb8(sfkb9,rval1)
          r9ans1 = rval1
          r9comp = sin(25.673)**2
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
23802 write(6,31610) i9data 
23852 r9ans1 = 0.0e00
c
          rval1 = 417.4
          call sfkb10(sfkb9,rval1,65.2)
          r9ans1 = rval1
          r9comp = sin(417.4/65.2)
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
23803 write(6,31610) i9data 
23853 r9ans1 = 0.0e00
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end

          subroutine sfkb1(iv1,iv2)
          do 10 i=11,11
          iv2 = iv1(iv2)
   10     continue
          return
          end

          subroutine sfkb2(iv1,iv2,iv3)
          iv2 = iv1(iv2)+iv3
          return
          end

          subroutine sfkb3(rv1,rv2)
          rv2 = rv1(rv2)
          return
          end

          subroutine sfkb4(rv1,rv2,rv3)
          rv2 = rv1(rv2)*rv3
          return
          end

          subroutine sfkb5(sub,iv)
          iv = iv + 100
          call sub(iv)
          return
          end

          subroutine sfkb6(iv)
          iv = iabs(iv)
          return
          end

          subroutine sfkb7(sub,iv1,iv2)
          iv1 = iv1-iv2
          call sub (iv1)
          return
          end

          subroutine sfkb8(sub,rv)
          call sub(rv)
          rv = rv**2
          return
          end

          subroutine sfkb9(rv)
          rv = sin(rv)
          return
          end

          subroutine sfkb10(sub,rv1,rv2)
          rv1 = rv1/rv2
          call sub(rv1)
          return
          end

          integer function ffkb1(iv)
          ffkb1 = iv**2 - iv
          return
          end

          function ffkb2(rv)
          ffkb2 = exp(rv)/rv
          return
          end
