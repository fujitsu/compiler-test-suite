      dimension ia(5)
      write(6,*) ' listdirect test (write->rewind->read)'
      write(6,*) '     5*1eor read (recfm=u) '
      write(6,*) '     5*1eor read (recfm=u) '
      write(6,*) '     5*eor read (recfm=u) '
      write(6,*) '     5* eor read (recfm=u) '
      write(6,*) '     5*,eor read (recfm=u) '
      write(6,*) '     5*/eor read (recfm=u) '
      write(6,*) '     5 5 5 5 5eor read (recfm=u) '
      write(6,*) '     9 9 9 9 9 eor read (recfm=u) '
      write(6,*) ' if(1 1 1 1 1)is output 6 time ok ok '
      write(6,*) ' if(5 5 5 5 5)is output 1 time ok ok '
      write(6,*) ' if(9 9 9 9 9)is output 1 time ok ok '
      write(1,*) ' 5*1'
      rewind 1
      read(1,*) ia
      write(6,*) ia
      rewind 1
      write(1,*) ' 5*1'
      rewind 1
      read(1,*) i1,i2,i3,i4,i5
      write(6,*) i1,i2,i3,i4,i5
      rewind 1
      write(1,*) ' 5*'
      rewind 1
      read(1,*) i1,i2,i3,i4,i5
      write(6,*) i1,i2,i3,i4,i5
      rewind 1
      write(1,*) ' 5* '
      rewind 1
      read(1,*) ia
      write(6,*) ia
      rewind 1
      write(1,*) ' 5*,'
      rewind 1
      read(1,*) ia
      write(6,*) ia
      rewind 1
      write(1,*) ' 5*/'
      rewind 1
      read(1,*) i1,i2,i3,i4,i5
      write(6,*) i1,i2,i3,i4,i5
      rewind 1
      write(1,*) ' 5 5 5 5 5'
      rewind 1
      read(1,*) i1,i2,i3,i4,i5
      write(6,*) i1,i2,i3,i4,i5
      rewind 1
      write(1,*) ' 9 9 9 9 9 '
      rewind 1
      read(1,*) i1,i2,i3,i4,i5
      write(6,*) i1,i2,i3,i4,i5
      stop
      end
