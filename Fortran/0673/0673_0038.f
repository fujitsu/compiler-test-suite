      integer ia(20),ib(20)
      namelist /n1/ia,/name1/a,b,ll
      data a,b,ll/10.0,20.0,1111/,ac,bc,lc/10.0,20.0,1111/
      write(6,fmt='(''         start'')')
      open(1,status='scratch')
      open(2,status='scratch')
      do 10 i=1,20
      ib(i)=i
   10 ia(i)=i
      do 60 k=1,2
   80 write(k,n1)
      rewind k
      read(k,n1)
      do 40 i=1,20
      if(ia(i).ne.i)goto 30
   40 continue
      write(k,name1)
      rewind k
      read(k,n1)
      do 20 i=1,20
      if(ia(i).ne.i)goto 30
   20 continue
      read(k,name1)
      if(a.ne.10.0)write(6,70) a ,ac
      if(b.ne.20.0)write(6,70) b ,bc
      if(ll.ne.1111) write(6,70) ll,lc
      goto 60
   30  write(6,50) ia,ib
   50 format(' *** error ***'/' compare data'/2(10i3/),
     1 ' result data'/2(10i3/))
   70 format(' *** error ***'/' compare data'/z13/
     1 ' result data'/z13)
      goto 90
   60 continue
      write(6,fmt='(''         end'')')
   90 continue
      close(1,status='delete')
      close(2,status='delete')
      stop
      end
