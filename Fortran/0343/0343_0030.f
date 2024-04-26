      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
      real       r9ans1,r9comp,r9dif1,r9dif2,r9dif3
          dimension  r1dim1(100),r1dim2(100)
          real      r8dim1,r8dim2
          dimension r8dim1(704),r8dim2(704)
          r1dim1(1)=326.526
          r1dim1(2)=124.531
          r1dim1(3)=245.321
          r1dim1(4)=692.875
          r1dim1(5)=322.256
          r1dim1(6)=139.762
          r1dim1(7)=111.291
          r1dim1(8)=236.726
          r1dim1(9)=453.329
          r1dim1(10)=352.782
          r1dim1(11)=249.886
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
          rewind 1
          write(1,100) r1dim1(1),r1dim1(2)
  100     format(f7.3,f7.3)
          write(1,100) r1dim1(3),r1dim1(4)
          backspace 1
          ic = 1
          read(1,100) r9ans1,r1dim2(5)
          rewind 1
          r9comp=245.321
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
23800 write(6,31610) i9data,r9ans1,r9comp,r9dif3
23850 r9ans1 = 0.0e00
          write(6,5100) ic
 5100     format(1h+,18x,6hcount= ,i3)
c
          ic = 1
          read(1,100,end=21,err=21) r1dim2(1),r1dim2(2)
          backspace 1
          ic = 2
          read(1,100,end=21,err=21) r1dim2(3),r1dim2(4)
          if (r1dim2(1).ne.r1dim2(3)) go to 21
          ic = 3
          read(1,100,end=21,err=21) r1dim2(5),r1dim2(6)
          backspace 1
          ic = 4
          read(1,100,end=21,err=21) r1dim2(7),r1dim2(8)
          if (r1dim2(5).ne.r1dim2(7)) go to 21
          i9ans1=1
          go to 22
   21     i9ans1=0
   22     continue
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23000
      if(i9keyc.eq.1) go to 23100
      write(6,31510) i9data
      go to 23100
23000 if(i9keyc.eq.1) go to 23200
      write(6,31500) i9data
      go to 23200
23100 i9errc = i9errc + 1
23200 i9ans1=0
          write(6,5100) ic
c
          rewind 1
          write(1,200) r1dim1(5),r1dim1(6)
          write(1,200) r1dim1(7),r1dim1(8),r1dim1(9)
  200     format (f7.3)
          backspace 1
          backspace 1
          ic = 1
          read(1,200) r1dim2(8)
          if (r1dim1(8).ne.r1dim2(8)) go to 32
          ic = 2
          read(1,200) r1dim2(9)
          if (r1dim1(9).ne.r1dim2(9)) go to 32
          rewind 1
          ic = 3
          read(1,200) r1dim2(5),r1dim2(6),r1dim2(7)
          do 31 i=5,7
          if (r1dim1(i).ne.r1dim2(i)) go to 32
   31     continue
          i9ans1=1
          go to 33
   32     i9ans1=0
   33     continue
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23001
      if(i9keyc.eq.1) go to 23101
      write(6,31510) i9data
      go to 23101
23001 if(i9keyc.eq.1) go to 23201
      write(6,31500) i9data
      go to 23201
23101 i9errc = i9errc + 1
23201 i9ans1=0
          write(6,5100) ic
c
          rewind 1
          ic = 1
          read(1,200) r1dim2(1),r1dim2(2),r1dim2(3)
          do 41 i=1,3
          if (r1dim2(i).ne.r1dim1(i+4)) go to 44
   41     continue
          do 42 i=1,4
          backspace 1
   42     continue
          ic = 2
          read(1,200) r1dim2(3),r1dim2(4),r1dim2(5),r1dim2(6),r1dim2(7)
          do 43 i=3,7
          if (r1dim2(i).ne.r1dim1(i+2)) go to 44
   43     continue
          backspace 1
          ic = 3
          read(1,200) r1dim2(1)
          if (r1dim2(1).ne.r1dim1(9)) go to 44
          i9ans1=1
          go to 45
   44     i9ans1=0
   45     continue
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23002
      if(i9keyc.eq.1) go to 23102
      write(6,31510) i9data
      go to 23102
23002 if(i9keyc.eq.1) go to 23202
      write(6,31500) i9data
      go to 23202
23102 i9errc = i9errc + 1
23202 i9ans1=0
          write(6,5100) ic
c
          rewind 2
          write(2,200) r1dim1(1),r1dim1(2),r1dim1(3)
          do 51 i=1,4
          backspace 2
   51     continue
          ic = 1
          read(2,200) r1dim2(50)
          if (r1dim1(1).ne.r1dim2(50)) go to 52
          write(2,200) r1dim1(4),r1dim1(5),r1dim1(6)
          endfile 2
          rewind 2
          read(2,200) r1dim2(10),r1dim2(11),r1dim2(12),r1dim2(13)
          ic = 2
          if (r1dim1(1).ne.r1dim2(10)) go to 52
          ic = 3
          if (r1dim1(4).ne.r1dim2(11)) go to 52
          ic = 4
          if (r1dim1(5).ne.r1dim2(12)) go to 52
          ic = 5
          if (r1dim1(6).ne.r1dim2(13)) go to 52
          i9ans1=1
          go to 53
   52     i9ans1=0
   53     continue
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23003
      if(i9keyc.eq.1) go to 23103
      write(6,31510) i9data
      go to 23103
23003 if(i9keyc.eq.1) go to 23203
      write(6,31500) i9data
      go to 23203
23103 i9errc = i9errc + 1
23203 i9ans1=0
          write(6,5100) ic
c
          rewind 2
          ic = 1
          read(2,200) r1dim2(30)
          if (r1dim2(30).ne.r1dim1(1)) go to 61
          rewind 2
          rewind 2
          read(2,200)  r1dim2(31)
          ic = 2
          read(2,200)  r1dim2(32)
          if (r1dim1(1).ne.r1dim2(31)) go to 61
          ic = 3
          if (r1dim1(4).ne.r1dim2(32)) go to 61
          rewind 2
          write(2,100) r1dim1(10),r1dim1(11)
          backspace 2
          read(2,100) r1dim2(51),r1dim2(52)
          ic = 4
          if (r1dim1(10).ne.r1dim2(51)) go to 61
          ic = 5
          if (r1dim1(11).ne.r1dim2(52)) go to 61
          i9ans1=1
          go to 62
   61     i9ans1=0
   62     continue
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23004
      if(i9keyc.eq.1) go to 23104
      write(6,31510) i9data
      go to 23104
23004 if(i9keyc.eq.1) go to 23204
      write(6,31500) i9data
      go to 23204
23104 i9errc = i9errc + 1
23204 i9ans1=0
          write(6,5100) ic
c
          rewind 2
          endfile 2
          rewind 2
          write(2,200) r1dim1(11)
          write(2,200) r1dim1(10)
          backspace 2
          backspace 2
          backspace 2
          read(2,200) r1dim2(60),r1dim2(61)
          ic = 1
          if (r1dim1(11).ne.r1dim2(60)) go to 71
          ic = 2
          if (r1dim1(10).ne.r1dim2(61)) go to 71
          write(2,200) r1dim1(7),r1dim1(8),r1dim1(9)
          endfile 2
          backspace 2
          backspace 2
          ic = 3
          read(2,200,end=71,err=71) r1dim2(80)
          if (r1dim1(9).ne.r1dim2(80)) go to 71
          i9ans1=1
          go to 72
   71     i9ans1=0
   72     continue
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23005
      if(i9keyc.eq.1) go to 23105
      write(6,31510) i9data
      go to 23105
23005 if(i9keyc.eq.1) go to 23205
      write(6,31500) i9data
      go to 23205
23105 i9errc = i9errc + 1
23205 i9ans1=0
          write(6,5100) ic
c
          rewind 2
          write(4)  r1dim1(1),r1dim1(2)
          write(4)  r1dim1(2),r1dim1(3)
          write(4) r1dim1(3),r1dim1(4)
          endfile 4
          rewind 4
          ic = 1
          read(4,end=81) r1dim2(90),r1dim2(91)
          if (r1dim1(1).ne.r1dim2(90)) go to 81
          if (r1dim1(2).ne.r1dim2(91)) go to 81
          ic = 2
          read(4)  r1dim2(90),r1dim2(91)
          if (r1dim1(2).ne.r1dim2(90)) go to 81
          if (r1dim1(3).ne.r1dim2(91)) go to 81
          backspace 4
          ic = 3
          read(4,end=81) r1dim2(92),r1dim2(93)
          if (r1dim1(2).ne.r1dim2(92)) go to 81
          if (r1dim1(3).ne.r1dim2(93)) go to 81
          ic = 4
          read(4,end=81) r1dim2(92),r1dim2(93)
          if (r1dim1(3).ne.r1dim2(92)) go to 81
          if (r1dim1(4).ne.r1dim2(93)) go to 81
          i9ans1=1
          go to 82
   81     i9ans1=0
   82     continue
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23006
      if(i9keyc.eq.1) go to 23106
      write(6,31510) i9data
      go to 23106
23006 if(i9keyc.eq.1) go to 23206
      write(6,31500) i9data
      go to 23206
23106 i9errc = i9errc + 1
23206 i9ans1=0
          write(6,5100) ic
c
          rewind 4
          write(4) r1dim1(5)
          write(4) r1dim1(6)
          write(4) r1dim1(7)
          backspace 4
          backspace 4
          ic = 1
          read(4) r1dim2(20)
          if (r1dim1(6).ne.r1dim2(20)) go to 91
          write(4) r1dim1(8)
          write(4) r1dim1(9)
          backspace 4
          endfile 4
          rewind 4
          ic = 2
          read(4) r1dim2(20)
          if (r1dim1(5).ne.r1dim2(20)) go to 91
          ic = 3
          read(4)  r1dim2(20)
          if (r1dim1(6).ne.r1dim2(20)) go to 91
          ic = 4
          read(4,end=91) r1dim2(20)
          if (r1dim1(8).ne.r1dim2(20)) go to 91
          ic = 5
          read(4,end=92) r1dim2(20)
   91     i9ans1=0
          go to 93
   92     i9ans1=1
   93     continue
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23007
      if(i9keyc.eq.1) go to 23107
      write(6,31510) i9data
      go to 23107
23007 if(i9keyc.eq.1) go to 23207
      write(6,31500) i9data
      go to 23207
23107 i9errc = i9errc + 1
23207 i9ans1=0
          write(6,5100) ic
c
          do 99 i=1,704
          r8dim1(i) = i
   99     r8dim2(i) = 0.0
          rewind 4
          write (4) (r8dim1(i),i=1,704)
          write (4) (r8dim1(i),i=1,302)
          write (4) (r8dim1(i),i=1,201)
          write (4) (r8dim1(i),i=1,302)
          write (4) (r8dim1(i),i=1,403)
          write (4) (r8dim1(i),i=1,704)
          backspace 4
          ic = 1
          read (4,end=104) (r8dim2(i),i=1,704)
          do 101 i=1,704
          if (r8dim2(i).ne.r8dim1(i)) go to 104
  101     continue
          write (4) (r8dim1(i),i=1,302)
          write (4) (r8dim1(i),i=1,201)
          rewind 4
          ic = 2
          read (4)  (r8dim2(i),i=1,704)
          do 102 i=1,704
          if (r8dim2(i).ne.r8dim1(i)) go to 104
  102     continue
          backspace 4
          backspace 4
          ic = 3
          read (4)  (r8dim2(i),i=1,201)
          do 103 i=1,201
          if (r8dim2(i).ne.r8dim1(i)) go to 104
  103     continue
          i9ans1=1
          go to 105
  104     i9ans1=0
  105     continue
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23008
      if(i9keyc.eq.1) go to 23108
      write(6,31510) i9data
      go to 23108
23008 if(i9keyc.eq.1) go to 23208
      write(6,31500) i9data
      go to 23208
23108 i9errc = i9errc + 1
23208 i9ans1=0
          write(6,5100) ic
c
          rewind 4
          read (4) (r8dim2(i),i=1,704)
          ic = 1
          do 6111 i=1,704
          if (r8dim2(i).ne.r8dim1(i)) go to 116
 6111     continue
          ic = 2
          read (4) (r8dim2(i),i=1,302)
          do 7111 i=1,302
          if (r8dim2(i).ne.r8dim1(i)) go to 116
 7111     continue
          backspace 4
          backspace 4
          read (4) (r8dim2(i),i=1,704)
          read (4) (r8dim2(i),i=1,302)
          read (4) (r8dim2(i),i=1,201)
          ic = 3
          do 8111 i=1,201
          if (r8dim2(i).ne.r8dim1(i)) go to 116
 8111     continue
          ic = 4
          read (4) (r8dim2(i),i=1,302)
          do 6112 i=1,302
          if (r8dim2(i).ne.r8dim1(i)) go to 116
 6112     continue
          ic = 5
          read (4) (r8dim2(i),i=1,403)
          do 7112 i=1,403
          if (r8dim2(i).ne.r8dim1(i)) go to 116
 7112     continue
          backspace 4
          read (4) (r8dim2(i),i=1,403)
          read (4) (r8dim2(i),i=1,704)
          ic = 6
          do 6113 i=1,704
          if (r8dim2(i).ne.r8dim1(i)) go to 116
 6113     continue
          ic = 7
          read (4) (r8dim2(i),i=1,302)
          do 7113 i=1,302
          if (r8dim2(i).ne.r8dim1(i)) go to 116
 7113     continue
          read (4) (r8dim2(i),i=1,201)
          backspace 4
          read (4) (r8dim2(i),i=1,201)
          ic = 8
          do 6115 i=1,201
          if (r8dim2(i).ne.r8dim1(i)) go to 116
 6115     continue
          i9ans1=1
          go to 117
  116     i9ans1=0
  117     continue
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23009
      if(i9keyc.eq.1) go to 23109
      write(6,31510) i9data
      go to 23109
23009 if(i9keyc.eq.1) go to 23209
      write(6,31500) i9data
      go to 23209
23109 i9errc = i9errc + 1
23209 i9ans1=0
          write(6,5100) ic
c
          rewind 4
          write(4) (r1dim1(i),i=2,11),(r1dim1(j),j=1,11)
          backspace 4
          ic = 1
          read(4) (r1dim2(i),i=1,20)
          do 121 i=1,9
          if (r1dim2(i).ne.r1dim2(i+11)) go to 123
  121     continue
          rewind 4
          write(4) r1dim1(11)
          write(4) (r1dim1(i),i=1,11),(r1dim1(j),j=1,11),(r1dim1(k),k=1,
     111),(r1dim1(l),l=1,11)
          write(4) r1dim1(10)
          backspace 4
          backspace 4
          ic = 2
          read(4) (r1dim2(i),i=15,34)
          read(4) r1dim2(35)
          do 122 i=15,23
          if (r1dim2(i).ne.r1dim2(i+11)) go to 123
  122     continue
          rewind 4
          i9ans1=1
          go to 124
  123     i9ans1=0
  124     continue
      i9data = i9data + 1
      if(i9ans1.eq.1) go to 23010
      if(i9keyc.eq.1) go to 23110
      write(6,31510) i9data
      go to 23110
23010 if(i9keyc.eq.1) go to 23210
      write(6,31500) i9data
      go to 23210
23110 i9errc = i9errc + 1
23210 i9ans1=0
          write(6,5100) ic
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
