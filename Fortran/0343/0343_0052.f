      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
  100     format(i5)
  101     format(i8)
  102     format(i11)
  200     format(1h ,78x,i25)
c
c
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
          read(5,100) i9ans1
          i9comp=13
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23000
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23100
23000 write(6,31550) i9data
23100 continue
          write(6,301)
  301     format(1h+,20x,  25h                     0013,
     *                5x,  21h                   i5,
     *                7x,  25h                       13)
          write(6,200) i9ans1
c
          read(5,100) i9ans1
          i9comp=250
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23001
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23101
23001 write(6,31550) i9data
23101 continue
          write(6,302)
  302     format(1h+,20x,  25h                      250,
     *                5x,  21h                   i5,
     *                7x,  25h                      250)
          write(6,200) i9ans1
c
          read(5,100) i9ans1
          i9comp= 2034
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23002
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23102
23002 write(6,31550) i9data
23102 continue
          write(6,303)
  303     format(1h+,20x,  25h                     2 34,
     *                5x,  21h                   i5,
     *                7x,  25h                     2034)
          write(6,200) i9ans1
c
          read(5,100) i9ans1
          i9comp=1230
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23003
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23103
23003 write(6,31550) i9data
23103 continue
          write(6,304)
  304     format(1h+,20x,  25h                     123 ,
     *                5x,  21h                   i5,
     *                7x,  25h                     1230)
          write(6,200) i9ans1
c
          read(5,100) i9ans1
          i9comp=12
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23004
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23104
23004 write(6,31550) i9data
23104 continue
          write(6,305)
  305     format(1h+,20x,  25h                     + 12,
     *                5x,  21h                   i5,
     *                7x,  25h                       12)
          write(6,200) i9ans1
c
          read(5,100) i9ans1
          i9comp=12
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23005
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23105
23005 write(6,31550) i9data
23105 continue
          write(6,306)
  306     format(1h+,20x,  25h                     +012,
     *                5x,  21h                   i5,
     *                7x,  25h                       12)
          write(6,200) i9ans1
c
          read(5,100) i9ans1
          i9comp=-1
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23006
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23106
23006 write(6,31550) i9data
23106 continue
          write(6,307)
  307     format(1h+,20x,  25h                       -1,
     *                5x,  21h                   i5,
     *                7x,  25h                       -1)
          write(6,200) i9ans1
c
          read(5,100) i9ans1
          i9comp=-12
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23007
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23107
23007 write(6,31550) i9data
23107 continue
          write(6,308)
  308     format(1h+,20x,  25h                     -012,
     *                5x,  21h                   i5,
     *                7x,  25h                      -12)
          write(6,200) i9ans1
c
          read(5,101) i9ans1
          i9comp=12
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23008
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23108
23008 write(6,31550) i9data
23108 continue
          write(6,309)
  309     format(1h+,20x,  25h                  0000012,
     *                5x,  21h                   i8,
     *                7x,  25h                       12)
          write(6,200) i9ans1
c
          read(5,101) i9ans1
          i9comp=678
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23009
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23109
23009 write(6,31550) i9data
23109 continue
          write(6,310)
  310     format(1h+,20x,  25h                      678,
     *                5x,  21h                   i8,
     *                7x,  25h                      678)
          write(6,200) i9ans1
c
          read(5,101) i9ans1
          i9comp=1200567
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23010
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23110
23010 write(6,31550) i9data
23110 continue
          write(6,311)
  311     format(1h+,20x,  25h                  12  567,
     *                5x,  21h                   i8,
     *                7x,  25h                  1200567)
          write(6,200) i9ans1
c
          read(5,101) i9ans1
          i9comp=12340000
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23011
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23111
23011 write(6,31550) i9data
23111 continue
          write(6,312)
  312     format(1h+,20x,  25h                 1234    ,
     *                5x,  21h                   i8,
     *                7x,  25h                 12340000)
          write(6,200) i9ans1
c
          read(5,101) i9ans1
          i9comp=1234
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23012
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23112
23012 write(6,31550) i9data
23112 continue
          write(6,313)
  313     format(1h+,20x,  25h                    +1234,
     *                5x,  21h                   i8,
     *                7x,  25h                     1234)
          write(6,200) i9ans1
c
          read(5,101) i9ans1
          i9comp=1234
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23013
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23113
23013 write(6,31550) i9data
23113 continue
          write(6,314)
  314     format(1h+,20x,  25h                   +01234,
     *                5x,  21h                   i8,
     *                7x,  25h                     1234)
          write(6,200) i9ans1
c
          read(5,101) i9ans1
          i9comp=-123
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23014
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23114
23014 write(6,31550) i9data
23114 continue
          write(6,315)
  315     format(1h+,20x,  25h                   -  123,
     *                5x,  21h                   i8,
     *                7x,  25h                     -123)
          write(6,200) i9ans1
      write(6,31504)
31504 format(1h1 / )
      write(6,31501)
c
          read(5,101) i9ans1
          i9comp=-987
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23015
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23115
23015 write(6,31550) i9data
23115 continue
          write(6,316)
  316     format(1h+,20x,  25h                    -0987,
     *                5x,  21h                   i8,
     *                7x,  25h                     -987)
          write(6,200) i9ans1
c
          read(5,102) i9ans1
          i9comp=3765
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23016
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23116
23016 write(6,31550) i9data
23116 continue
          write(6,317)
  317     format(1h+,20x,  25h                  0003765,
     *                5x,  21h                  i11,
     *                7x,  25h                     3765)
          write(6,200) i9ans1
c
          read(5,102) i9ans1
          i9comp=3758
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23017
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23117
23017 write(6,31550) i9data
23117 continue
          write(6,318)
  318     format(1h+,20x,  25h                     3758,
     *                5x,  21h                  i11,
     *                7x,  25h                     3758)
          write(6,200) i9ans1
c
          read(5,102) i9ans1
          i9comp=1230067
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23018
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23118
23018 write(6,31550) i9data
23118 continue
          write(6,319)
  319     format(1h+,20x,  25h                  123  67,
     *                5x,  21h                  i11,
     *                7x,  25h                  1230067)
          write(6,200) i9ans1
c
          read(5,102) i9ans1
          i9comp=123000
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23019
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23119
23019 write(6,31550) i9data
23119 continue
          write(6,320)
  320     format(1h+,20x,  25h                   123   ,
     *                5x,  21h                  i11,
     *                7x,  25h                   123000)
          write(6,200) i9ans1
c
          read(5,102) i9ans1
          i9comp=1234
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23020
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23120
23020 write(6,31550) i9data
23120 continue
          write(6,321)
  321     format(1h+,20x,  25h                    +1234,
     *                5x,  21h                  i11,
     *                7x,  25h                     1234)
          write(6,200) i9ans1
c
          read(5,102) i9ans1
          i9comp=32
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23021
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23121
23021 write(6,31550) i9data
23121 continue
          write(6,322)
  322     format(1h+,20x,  25h                    +0032,
     *                5x,  21h                  i11,
     *                7x,  25h                       32)
          write(6,200) i9ans1
c
          read(5,102) i9ans1
          i9comp=-987
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23022
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23122
23022 write(6,31550) i9data
23122 continue
          write(6,323)
  323     format(1h+,20x,  25h                   -  987,
     *                5x,  21h                  i11,
     *                7x,  25h                     -987)
          write(6,200) i9ans1
c
          read(5,102) i9ans1
          i9comp=-356
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23023
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23123
23023 write(6,31550) i9data
23123 continue
          write(6,324)
  324     format(1h+,20x,  25h                   00-356,
     *                5x,  21h                  i11,
     *                7x,  25h                     -356)
          write(6,200) i9ans1
      stop
      end
