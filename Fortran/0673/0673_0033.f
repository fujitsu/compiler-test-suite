      integer ia(30),ib(30)
      ia=0
      ib=0
      write(6,fmt='(''         start'')')
      open(1)
      open(2)
      open(3)
      do 10 i=11,30
   10 ia(i)=i
      do 60 k=1,3
      write(k,fmt='(20a4)') ia
      write(k,fmt='(2i4)') ia
      rewind k
      read(k,fmt='(20a4)') ib
      do 20 i=11,30
      if(ia(i).ne.ib(i)) goto 30
   20 continue
      read(k,fmt='(2i4)') ib
      do 40 i=11,30
      if(ia(i).ne.ib(i)) goto 30
   40 continue
      goto 60
   30  write(6,50) ia,ib
      goto 90
   50 format(' *** error ***'/' compare data'/20i3 /
     1 ' result data'/20i3)
   60 continue
      write(6,fmt='(''         normal end'')')
   90 close(1)
      close(2)
      close(3)
      stop
      end
