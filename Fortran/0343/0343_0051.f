      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
  200     format(1h ,78x,i25)
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
          read(5,101) i9ans1
  101     format(i2)
          i9comp=3
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23000
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23100
23000 write(6,31550) i9data
23100 continue
          write(6,301)
  301     format(1h+,20x,  25h                       +3,
     *               5x,   21h                   i2,
     *               7x,   25h                        3)
          write(6,200) i9ans1
c
          read(5,102) i9ans1
  102     format(i3)
          i9comp=12
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23001
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23101
23001 write(6,31550) i9data
23101 continue
          write(6,302)
  302     format(1h+,20x,  25h                      +12,
     *               5x,   21h                   i3,
     *               7x,   25h                       12)
          write(6,200) i9ans1
c
          read(5,103) i9ans1
  103     format(i5)
          i9comp=1234
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23002
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23102
23002 write(6,31550) i9data
23102 continue
          write(6,303)
  303     format(1h+,20x,  25h                    +1234,
     *               5x,   21h                   i5,
     *               7x,   25h                     1234)
          write(6,200) i9ans1
c
          read(5,104) i9ans1
  104     format(i7)
          i9comp=123456
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23003
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23103
23003 write(6,31550) i9data
23103 continue
          write(6,304)
  304     format(1h+,20x,  25h                  +123456,
     *               5x,   21h                   i7,
     *               7x,   25h                   123456)
          write(6,200) i9ans1
c
          read(5,105) i9ans1
  105     format(i9)
          i9comp=12345678
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23004
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23104
23004 write(6,31550) i9data
23104 continue
          write(6,305)
  305     format(1h+,20x,25h                +12345678,
     *                5x,  21h                   i9,
     *               7x,   25h                 12345678)
          write(6,200) i9ans1
c
          read(5,106) i9ans1
  106     format(i11)
          i9comp=1234567890
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23005
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23105
23005 write(6,31550) i9data
23105 continue
          write(6,306)
  306     format(1h+,20x,  25h              +1234567890,
     *               5x,   21h                  i11,
     *               7x,   25h               1234567890)
          write(6,200) i9ans1
c
          read(5,107) i9ans1
  107     format(i2)
          i9comp=-5
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23006
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23106
23006 write(6,31550) i9data
23106 continue
          write(6,307)
  307     format(1h+,20x,  25h                       -5,
     *               5x,   21h                   i2,
     *               7x,   25h                       -5)
          write(6,200) i9ans1
c
          read(5,108) i9ans1
  108     format(i5)
          i9comp=-1234
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23007
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23107
23007 write(6,31550) i9data
23107 continue
          write(6,308)
  308     format(1h+,20x,  25h                    -1234,
     *               5x,   21h                   i5,
     *               7x,   25h                    -1234)
          write(6,200) i9ans1
c
          read(5,109) i9ans1
  109     format(i6)
          i9comp=-12345
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23008
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23108
23008 write(6,31550) i9data
23108 continue
          write(6,309)
  309     format(1h+,20x,  25h                   -12345,
     *               5x,   21h                   i5,
     *               7x,   25h                   -12345)
          write(6,200) i9ans1
c
          read(5,110) i9ans1
  110     format(i7)
          i9comp=-123456
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23009
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23109
23009 write(6,31550) i9data
23109 continue
          write(6,310)
  310     format(1h+,20x,  25h                  -123456,
     *               5x,   21h                   i7,
     *               7x,   25h                  -123456)
          write(6,200) i9ans1
c
          read(5,111) i9ans1
  111     format(i10)
          i9comp=-123456789
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23010
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23110
23010 write(6,31550) i9data
23110 continue
          write(6,311)
  311     format(1h+,20x,  25h               -123456789,
     *               5x,   21h                  i10,
     *               7x,   25h               -123456789)
          write(6,200) i9ans1
c
          read(5,112) i9ans1
  112     format(i11)
          i9comp=-2147483647
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23011
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23111
23011 write(6,31550) i9data
23111 continue
          write(6,312)
  312     format(1h+,20x,  25h              -2147483647,
     *               5x,   21h                  i11,
     *               7x,   25h              -2147483647)
          write(6,200) i9ans1
c
          read(5,113) i9ans1
  113     format(i1)
          i9comp=8
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23012
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23112
23012 write(6,31550) i9data
23112 continue
          write(6,313)
  313     format(1h+,20x,  25h                        8,
     *               5x,   21h                   i1,
     *               7x,   25h                        8)
          write(6,200) i9ans1
c
          read(5,114) i9ans1
  114     format(i4)
          i9comp=1234
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23013
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23113
23013 write(6,31550) i9data
23113 continue
          write(6,314)
  314     format(1h+,20x,  25h                     1234,
     *               5x,   21h                   i4,
     *               7x,   25h                     1234)
          write(6,200) i9ans1
c
          read(5,115) i9ans1
  115     format(i6)
          i9comp=123456
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23014
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23114
23014 write(6,31550) i9data
23114 continue
          write(6,315)
  315     format(1h+,20x,  25h                   123456,
     *               5x,   21h                   i6,
     *               7x,   25h                   123456)
          write(6,200) i9ans1
      write(6,31504)
31504 format(1h1 / )
      write(6,31501)
c
          read(5,116)i9ans1
  116     format(i8)
          i9comp=12345678
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23015
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23115
23015 write(6,31550) i9data
23115 continue
          write(6,316)
  316     format(1h+,20x,  25h                 12345678,
     *               5x,   21h                   i8,
     *               7x,   25h                 12345678)
          write(6,200) i9ans1
c
          read(5,117) i9ans1
  117     format(i9)
          i9comp=123456789
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23016
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23116
23016 write(6,31550) i9data
23116 continue
          write(6,317)
  317     format(1h+,20x,  25h                123456789,
     *               5x,   21h                   i9,
     *               7x,   25h                123456789)
          write(6,200) i9ans1
c
          read(5,118) i9ans1
  118     format(i10)
          i9comp=2147483647
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23017
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23117
23017 write(6,31550) i9data
23117 continue
          write(6,318)
  318     format(1h+,20x,  25h               2147483647,
     *               5x,   21h                  i10,
     *               7x,   25h               2147483647)
          write(6,200) i9ans1
c
          read(5,119) i9ans1
  119     format(i3)
          i9comp=3
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23018
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23118
23018 write(6,31550) i9data
23118 continue
          write(6,319)
  319     format(1h+,20x,  25h                       +3,
     *               5x,   21h                   i3,
     *               7x,   25h                        3)
          write(6,200) i9ans1
c
          read(5,120) i9ans1
  120     format(i6)
          i9comp=5
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23019
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23119
23019 write(6,31550) i9data
23119 continue
          write(6,320)
  320     format(1h+,20x,  25h                       +5,
     *               5x,   21h                   i6,
     *               7x,   25h                        5)
          write(6,200) i9ans1
c
          read(5,120) i9ans1
          i9comp=12
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23020
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23120
23020 write(6,31550) i9data
23120 continue
          write(6,321)
  321     format(1h+,20x,  25h                      +12,
     *               5x,   21h                   i6,
     *               7x,   25h                       12)
          write(6,200) i9ans1
c
          read(5,120) i9ans1
          i9comp=1234
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23021
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23121
23021 write(6,31550) i9data
23121 continue
          write(6,322)
  322     format(1h+,20x,  25h                    +1234,
     *                5x,  21h                   i6,
     *               7x,   25h                     1234)
          write(6,200) i9ans1
c
          read(5,123)i9ans1
  123     format(i8)
          i9comp=2
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23022
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23122
23022 write(6,31550) i9data
23122 continue
          write(6,323)
  323     format(1h+,20x,  25h                       +2,
     *               5x,   21h                   i8,
     *               7x,   25h                        2)
          write(6,200) i9ans1
c
          read(5,123) i9ans1
          i9comp=123
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23023
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23123
23023 write(6,31550) i9data
23123 continue
          write(6,324)
  324     format(1h+,20x,  25h                     +123,
     *               5x,   21h                   i8,
     *               7x,   25h                      123)
          write(6,200) i9ans1
c
          read(5,123) i9ans1
          i9comp=123456
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23024
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23124
23024 write(6,31550) i9data
23124 continue
          write(6,325)
  325     format(1h+,20x,  25h                  +123456,
     *               5x,   21h                   i8,
     *               7x,   25h                   123456)
          write(6,200) i9ans1
c
          read(5,126) i9ans1
  126     format(i11)
          i9comp=7
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23025
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23125
23025 write(6,31550) i9data
23125 continue
          write(6,326)
  326     format(1h+,20x,  25h                       +7,
     *               5x,   21h                  i11,
     *               7x,   25h                        7)
          write(6,200) i9ans1
c
          read(5,126) i9ans1
          i9comp=11
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23026
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23126
23026 write(6,31550) i9data
23126 continue
          write(6,327)
  327     format(1h+,20x,  25h                      +11,
     *               5x,   21h                  i11,
     *               7x,   25h                       11)
          write(6,200) i9ans1
c
          read(5,126) i9ans1
          i9comp=1234
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23027
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23127
23027 write(6,31550) i9data
23127 continue
          write(6,328)
  328     format(1h+,20x,  25h                    +1234,
     *               5x,   21h                  i11,
     *               7x,   25h                     1234)
          write(6,200) i9ans1
c
          read(5,126) i9ans1
          i9comp=1234567
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23028
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23128
23028 write(6,31550) i9data
23128 continue
          write(6,329)
  329     format(1h+,20x,  25h                  1234567,
     *               5x,   21h                  i11,
     *               7x,   25h                  1234567)
          write(6,200) i9ans1
c
          read(5,126) i9ans1
          i9comp=123456789
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23029
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23129
23029 write(6,31550) i9data
23129 continue
          write(6,330)
  330     format(1h+,20x,  25h               +123456789,
     *               5x,   21h                  i11,
     *               7x,   25h                123456789)
          write(6,200) i9ans1
      write(6,31505)
31505 format(1h1 / )
      write(6,31501)
c
          read(5,131) i9ans1
  131     format(i3)
          i9comp=-3
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23030
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23130
23030 write(6,31550) i9data
23130 continue
          write(6,331)
  331     format(1h+,20x,  25h                       -3,
     *               5x,   21h                   i3,
     *               7x,   25h                       -3)
          write(6,200) i9ans1
c
          read(5,132) i9ans1
  132     format(i5)
          i9comp=-12
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23031
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23131
23031 write(6,31550) i9data
23131 continue
          write(6,332)
  332     format(1h+,20x,  25h                      -12,
     *               5x,   21h                   i5,
     *               7x,   25h                      -12)
          write(6,200) i9ans1
c
          read(5,132) i9ans1
          i9comp=-123
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23032
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23132
23032 write(6,31550) i9data
23132 continue
          write(6,333)
  333     format(1h+,20x,  25h                     -123,
     *               5x,   21h                   i5,
     *               7x,   25h                     -123)
          write(6,200) i9ans1
c
          read(5,134) i9ans1
  134     format(i9)
          i9comp=-1234
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23033
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23133
23033 write(6,31550) i9data
23133 continue
          write(6,334)
  334     format(1h+,20x,  25h                    -1234,
     *               5x,   21h                   i9,
     *               7x,   25h                    -1234)
          write(6,200) i9ans1
c
          read(5,134) i9ans1
          i9comp=-12345
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23034
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23134
23034 write(6,31550) i9data
23134 continue
          write(6,335)
  335     format(1h+,20x,  25h                   -12345,
     *               5x,   21h                   i9,
     *                7x,  25h                   -12345)
          write(6,200) i9ans1
c
          read(5,134) i9ans1
          i9comp=-1234567
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23035
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23135
23035 write(6,31550) i9data
23135 continue
          write(6,336)
  336     format(1h+,20x,  25h                 -1234567,
     *               5x,   21h                   i9,
     *               7x,   25h                 -1234567)
          write(6,200) i9ans1
c
          read(5,137) i9ans1
  137     format(i11)
          i9comp=-9
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23036
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23136
23036 write(6,31550) i9data
23136 continue
          write(6,337)
  337     format(1h+,20x,  25h                       -9,
     *               5x,   21h                  i11,
     *               7x,   25h                       -9)
          write(6,200) i9ans1
c
          read(5,137) i9ans1
          i9comp=-123456
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23037
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23137
23037 write(6,31550) i9data
23137 continue
          write(6,338)
  338     format(1h+,20x,  25h                  -123456,
     *               5x,   21h                  i11,
     *               7x,   25h                  -123456)
          write(6,200) i9ans1
c
          read(5,137) i9ans1
          i9comp=-123456789
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23038
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23138
23038 write(6,31550) i9data
23138 continue
          write(6,339)
  339     format(1h+,20x,  25h               -123456789,
     *               5x,   21h                  i11,
     *               7x,   25h               -123456789)
          write(6,200) i9ans1
c
          read(5,140) i9ans1
  140     format(i3)
          i9comp=6
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23039
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23139
23039 write(6,31550) i9data
23139 continue
          write(6,340)
  340     format(1h+,20x,  25h                        6,
     *               5x,   21h                   i3,
     *               7x,   25h                        6)
          write(6,200)i9ans1
c
          read(5,140) i9ans1
          i9comp=13
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23040
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23140
23040 write(6,31550) i9data
23140 continue
          write(6,341)
  341     format(1h+,20x,  25h                       13,
     *               5x,   21h                   i3,
     *               7x,   25h                       13)
          write(6,200) i9ans1
c
          read(5,142) i9ans1
  142     format(i5)
          i9comp=27
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23041
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23141
23041 write(6,31550) i9data
23141 continue
          write(6,342)
  342     format(1h+,20x,  25h                       27,
     *               5x,   21h                   i5,
     *               7x,   25h                       27)
          write(6,200) i9ans1
c
          read(5,142) i9ans1
          i9comp=123
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23042
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23142
23042 write(6,31550) i9data
23142 continue
          write(6,343)
  343     format(1h+,20x,  25h                      123,
     *               5x,   21h                   i5,
     *               7x,   25h                      123)
          write(6,200) i9ans1
c
          read(5,142) i9ans1
          i9comp=1234
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23043
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23143
23043 write(6,31550) i9data
23143 continue
          write(6,344)
  344     format(1h+,20x,  25h                     1234,
     *               5x,   21h                   i5,
     *               7x,   25h                     1234)
          write(6,200) i9ans1
c
          read(5,145) i9ans1
  145     format(i9)
          i9comp=123
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23044
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23144
23044 write(6,31550) i9data
23144 continue
          write(6,345)
  345     format(1h+,20x,  25h                      123,
     *               5x,   21h                   i9,
     *               7x,   25h                      123)
          write(6,200) i9ans1
c
          read(5,145) i9ans1
          i9comp=1973
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23045
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23145
23045 write(6,31550) i9data
23145 continue
          write(6,346)
  346     format(1h+,20x,  25h                     1973,
     *               5x,   21h                   i9,
     *               7x,   25h                     1973)
          write(6,200) i9ans1
c
          read(5,145) i9ans1
          i9comp=999999
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23046
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23146
23046 write(6,31550) i9data
23146 continue
          write(6,347)
  347     format(1h+,20x,  25h                   999999,
     *               5x,   21h                   i9,
     *               7x,   25h                   999999)
          write(6,200) i9ans1
c
          read(5,148) i9ans1
  148     format(i11)
          i9comp=9
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23047
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23147
23047 write(6,31550) i9data
23147 continue
          write(6,348)
  348     format(1h+,20x,  25h                        9,
     *                5x,  21h                  i11,
     *                7x,  25h                        9)
          write(6,200) i9ans1
c
          read(5,148) i9ans1
          i9comp=99999
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23048
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23148
23048 write(6,31550) i9data
23148 continue
          write(6,349)
  349     format(1h+,20x,  25h                    99999,
     *               5x,   21h                  i11,
     *               7x,   25h                    99999)
          write(6,200) i9ans1
c
          read(5,148) i9ans1
          i9comp=999999999
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23049
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23149
23049 write(6,31550) i9data
23149 continue
          write(6,350)
  350     format(1h+,20x,  25h                999999999,
     *               5x,   21h                  i11,
     *               7x,   25h                999999999)
          write(6,200) i9ans1
      stop
      end
