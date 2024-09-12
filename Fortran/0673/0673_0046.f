      dimension ia(5)
      namelist /nam1/ia
      write(6,*) ' namelist test'
      write(6,*) ' if(1 1 1 1 1)is output 7 time ok ok '
      write(6,*) ' if(5 5 5 5 5)is output 1 time ok ok '
      write(6,*) ' if(9 9 9 9 9)is output 3 time ok ok '
      write(1,*) '&nam1'
      write(1,*) ' ia=5*1'
      write(1,*) '&end'
      rewind 1
      read(1,nam1)
      write(6,*) ia
      write(2,*) '&nam1 ia=5*1'
      write(2,*) '&end'
      rewind 2
      read(2,nam1)
      write(6,*) ia
      write(3,*) '&nam1 ia='
      write(3,*) '5*1'
      write(3,*) '&end'
      rewind 3
      read(3,nam1)
      write(6,*) ia
      write(4,*) '&nam1'
      write(4,*) '             '
      write(4,*) '  ia='
      write(4,*) '5*1'
      write(4,*) '&end'
      rewind 4
      read(4,nam1)
      write(6,*) ia
      write(8,*) '&nam1 ia=5*'
      write(8,*) '&end'
      rewind 8
      read(8,nam1)
      write(6,*) ia
      write(9,*) '&nam1                                '
      write(9,*) '                      ia=5* '
      write(9,*) '&end'
      rewind 9
      read(9,nam1)
      write(6,*) ia
      write(10,*) '&nam1'
      write(10,*) ' ia(1)=5*,'
      write(10,*) '&end'
      rewind 10
      read(10,nam1)
      write(6,*) ia
      write(11,*) '&nam1 ia(1)=5'
      write(11,*) ' ia(2)=5,ia(3)=5'
      write(11,*) '   ia(4)=5,'
      write(11,*) '  ia(5)=5  &end'
      rewind 11
      read(11,nam1)
      write(6,*) ia
      write(12,*) '&nam1 ia=2*9,9,2*9, &end'
      rewind 12
      read(12,nam1)
      write(6,*) ia
      write(13,*) '&nam1 ia=,,,,, &end'
      rewind 13
      read(13,nam1)
      write(6,*) ia
      write(14,*) '&nam1 ia(1)=5'
      write(14,*) ' ia(2)=5,ia(3)=5'
      write(14,*) '   ia(4)=5,'
      write(14,*) '  ia(5)=5      '
      write(14,*) '  ia=9,9'
      write(14,*) '      9,'
      write(14,*) '  9'
      write(14,*) '       9,'
      write(14,*) '&end'
      rewind 14
      read(14,nam1)
      write(6,*) ia
      stop
      end
