      integer ia(20),ib(20)
      open(2)
      open(3)
      open(1)
      write(6,fmt='(''         start'')')
      do 10 i=1,20
   10 ia(i)=i
      do 60 k=1,3
      write(k,fmt='(20a4)') ia
      write(k,fmt='(2i4)') ia
      rewind k
      do 70 i=2,20,2
   70 ia(i)=i+1
      write(k,fmt='(20a4)')  ia
      write(k,fmt='(2i4)') ia
      rewind k
      do 80 i=1,20
   80 ia(i)=i
      read(k,fmt='(20a4)')  ib
      do 20 i=1,20,2
      if(ia(i).ne.ib(i)) goto 30
      if(ia(i)+2.ne.ib(i+1))goto 30
   20 continue
      read(k,fmt='(2i4)') ib
      do 40 i=1,20,2
      if(ia(i).ne.ib(i)) goto 30
      if(ia(i)+2.ne.ib(i+1))goto 30
   40 continue
      goto 60
   30  write(6,50) ia,ib
      goto 90
   50 format(' *** error ***'/' compare data'/20i3 /
     1 ' result data'/20i3)
   60 continue
      write(6,fmt='(''         normal end'')')
   90 continue
      close(1)
      close(2)
      close(3)
      stop
      end
