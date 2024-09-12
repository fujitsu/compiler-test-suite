      integer ia(30),ib(30)
      ia=0
      ib=0
      open(1)
      write(6,fmt='(''         start'')')
      do 10 i=11,30
   10 ia(i)=i
      write(1,fmt='(20a4)')  ia
      write(1,fmt='(2i4)') ia
      rewind 1
      read(1,fmt='(20a4)') ib
      do 20 i=11,30
      if(ia(i).ne.ib(i)) goto 30
   20 continue
      read(1,fmt='(2i4)') ib
      do 40 i=11,30
      if(ia(i).ne.ib(i)) goto 30
   40 continue
      close(1)
      write(6,fmt='(''         normal end'')')
      stop
   30  write(6,50) ia,ib
   50 format(' *** error ***'/' compare data'/20i3 /
     1 ' result data'/20i3)
      close(1)
      stop
      end
