      integer ia(10),ib(10),ic(10)
      character ds(3)*4
      data ds/'seq ','dir ','seq '/
      dataia/z'0001000b',z'0002000c',z'0003000d',z'0004000e',
     1     z'0005000f',z'00060010',z'00070011',z'00080012',
     1     z'00090013',z'000a0014'/
      data ib/z'00010001',z'00020002',z'00030003',z'00040004',
     1     z'00050005',z'00060016',z'00070007',z'00080008',
     1     z'00090009',z'000a000a'/
      write(6,fmt='(''         start'')')
      open(11,form='unformatted')
      open(12,form='formatted')
      open(13,form='unformatted')
      open(14,form='formatted')
      open(15,form='unformatted')
      open(16,form='formatted')
      idsc=0
      do 200 iu=11,15,2
      idsc=idsc+1
      iu1=iu
      iu2=iu+1
      do 10 i=1,4
      do 20 k=1,i
      write(iu1) ia(k)
   20 write(iu2,50)ia(k)
      do 30 k=1,i
      backspace iu1
   30 backspace iu2
      do 60 k=1,i
      read(iu1)  ic(k)
      if(ic(k).ne.ia(k)) write(6,70) ia(k),ic(k),iu1
      read(iu2,50)ic(k)
      if(ic(k).ne.ia(k)) write(6,70) ia(k),ic(k),iu2
   50 format(z8 )
   60 continue
      rewind iu1
      rewind iu2
   10 continue
   70 format(' *** error ***',' compare data',z9,' result data',z9,
     1 ' unit',i3)
      write(6,fmt='('' check1 end'','' data set='',a)')ds(idsc)
      rewind iu1
      rewind iu2
      write(iu1) ib(1)
      write(iu2,50) ib(1)
      do 80 k=1,3
      backspace iu1
   80 backspace iu2
      read(iu1) ic(2)
      if(ib(1).ne.ic(2)) write(6,70) ib(1),ic(2),iu1
      read(iu2,50)ic(2)
      if(ib(1).ne.ic(2)) write(6,70) ib(1),ic(2),iu2
      write(6,fmt='('' check2 end'','' data set='',a)')ds(idsc)
      rewind iu1
      rewind iu2
      do 90 i=1,4
      write(iu1)ia(i)
   90 write(iu2,50) ia(i)
      backspace iu1
      backspace iu2
      read(iu1) ic(1)
      if(ia(4).ne.ic(1)) write(6,70) ia(4),ic(1) ,iu1
      read(iu2,50)ic(1)
      if(ia(4).ne.ic(1)) write(6,70) ia(4),ic(1) ,iu2
      read(iu1,end=100)
      write(6,fmt='('' *** error ***  eod process unit='',i3)') iu1
  100 read(iu2,50,end=110)
      write(6,fmt='('' *** error ***  eod process unit='',i3)') iu2
  110 write(6,fmt='('' check3 end'','' data set='',a)')ds(idsc)
  200 continue
      write(6,fmt='(''         end'')')
      stop
      end