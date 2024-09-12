      integer ia(20),ic(30),id(30)
      write(6,fmt='(''         start'')')
      open(3)
      open(1)
      open(2)
      do 10 i=1,20
   10 ia(i)=i+1+20
      do 60 k=1,3
      if(k.ne.3)goto 80
      write(k,fmt='(30a4)')ia,(ia(i),i=1,10)
      goto 110
   80 write(k,fmt='(10a4,10a4)')  ia
  110 write(k,fmt='(2i4)') ia
      rewind k
      do 70 i=1,30
   70 ic(i)=i+1+20
      write(k,fmt='(30a4)') ic
      write(k,fmt='(2i4)') ic
      rewind k
      read(k,fmt='(30a4)') id
      do 20 i=1,30
      if(ic(i).ne.id(i)) goto 30
   20 continue
      read(k,fmt='(2i4)') id
      do 40 i=1,30
      if(ic(i).ne.id(i)) goto 30
   40 continue
      goto 60
   30  write(6,50) ic,id
      goto 90
   50 format(' *** error ***'/' compare data'/3(10i3/),
     1 ' result data'/3(10i3/))
   60 continue
      write(6,fmt='(''         normal end'')')
   90 continue
      close(1)
      close(2)
      close(3)
      stop
      end
