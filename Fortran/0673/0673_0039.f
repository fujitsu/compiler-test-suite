      write(6,fmt='(''         start'')')
      ioso=100
      open(unit=1,iostat=ios,err=10,file='ioct084.f01',status='unknown',
     1 access='sequential',form='formatted',blank='zero')
      k=1111
      write(1,30) k
      rewind 1
      read(1,30)l
      close(unit=1,iostat=ios,err=20,status='keep')
      if(k.ne.l)write(6,100)k,l
      write(6,fmt='('' check1 end'')')
      open(unit=2,file='ioct084.f01',err=10,status='old',iostat=ios,
     1 access='direct',form='unformatted',recl=100)
      write(2,rec=4) k
      read(2,rec=4) l
      close(unit=2,iostat=ios,err=20,status='keep')
      if(k.ne.l) write(6,100) k,l
      write(6,fmt='('' check2 end'')')
      goto 40
   10 write(6,fmt='('' *** error *** open statement i/o error'')')
      goto 40
   20 write(6,fmt='('' *** error *** close statement i/o error'')')
      goto 40
   30 format(i10)
   40 continue
      open(unit=2,file='ioct084.f01',err=10,status='old',iostat=ios,
     1 access='direct',form='unformatted',recl=100)
      close(unit=2,iostat=ios,err=20,status='delete')
      write(6,fmt='(''         end'')')
      stop
  100 format(' *** error ***'/' compare data 'i12,' result data'i12)
      end
