      integer ia(20),ib(20),ic(30),id(30)
      write(6,fmt='(''         start'')')
      open(10)
      open(20)
      open(30)
      do 10 i=1,20
   10 ia(i)=i
      do 60 k=10,30,10
   80 write(k,*) ia
      rewind k
      read(k,*) ib
      do 70 i=21,50
   70 ic(i-20)=i
      write(k,*) ic
      rewind k
      read(k,*) ib
      do 40 i=1,20
      if(ia(i).ne.ib(i))goto 30
   40 continue
      read(k,*) id
      do 20 i=1,30
      if(ic(i).ne.id(i)) goto 30
   20 continue
      goto 60
   30  write(6,50) ic,id
   50 format(' *** error ***'/' compare data'/3(10i3/),
     1 ' result data'/3(10i3/))
      goto 90
   60 continue
      write(6,fmt='(''         normal end'')')
   90 continue
      close(10,status='delete')
      close(20,status='delete')
      close(30,status='delete')
      stop
      end
