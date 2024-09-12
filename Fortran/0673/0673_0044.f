      integer ia(10),ib(10),ic(10)
      character ds(3)*4
      data ds/'seq ','dir ','seq '/
      dataia/z'0001000b',z'0002000c',z'0003000d',z'0004000e',
     1        z'0005000f',z'00060010',z'00070011',z'00080012',
     1        z'00090013',z'000a0014'/
      data ib/z'00010001',z'00020002',z'00030003',z'00040004',
     1        z'00050005',z'00060016',z'00070007',z'00080008',
     1        z'00090009',z'000a000a'/
      write(6,fmt='(''         start'')')
      open(11,form='unformatted')
      open(12)
      open(13,form='unformatted')
      open(14)
      open(15,form='unformatted')
      open(16)
      idsc=0
      do 300 iu=11,15,2
      idsc=idsc+1
      iu1=iu
      iu2=iu+1
      do 20 k=1,4
      write(iu1) ia(k)
   20 write(iu2,50)ia(k)
      rewind iu1
      rewind iu2
      do 30 k=1,4
      read(iu1) ic(k)
   30 read(iu2,50)ic(k)
      read(iu1,end=40)
      write(6,fmt='('' *** error ***  eod process unit='',i3)') iu1
   40 read(iu2,50,end=60)
      write(6,fmt='('' *** error ***  eod process unit='',i3)') iu2
   50 format(z8)
   60 backspace iu1
      backspace iu2
      read(iu1,end=80)
      write(6,fmt='('' *** error ***  eod process unit='',i3)') iu1
   70 format(' *** error ***',' compare data',z9,' result data',z9,
     1 ' unit=',i3)
   80 read(iu2,50,end=90)
      write(6,fmt='('' *** error ***  eod process unit='',i3)') iu2
   90 write(6,fmt='('' check1 end'','' data set='',a)')ds(idsc)
      rewind iu1
      rewind iu2
      do 100 k=1,4
      read(iu1) ic(k)
  100 read(iu2,50)ic(k)
      read(iu1,end=110)
      write(6,fmt='('' *** error ***  eod process unit='',i3)') iu1
  110 read(iu2,50,end=120)
      write(6,fmt='('' *** error ***  eod process unit='',i3)') iu2
  120 do 130 k=1,2
      backspace iu1
  130 backspace iu2
      read(iu1) ic(1)
      if(ia(4).ne.ic(1)) write(6,70) ia(4),ic(1),iu1
      read(iu2,50) ic(1)
      if(ia(4).ne.ic(1)) write(6,70) ia(4),ic(1),iu2
      write(6,fmt='('' check2 end'','' data set='',a)')ds(idsc)
      rewind iu1
      rewind iu2
      do 140 k=1,4
      read(iu1) ic(k)
  140 read(iu2,50)ic(k)
      read(iu1,end=150)
      write(6,fmt='('' *** error ***  eod process unit='',i3)') iu1
  150 read(iu2,50,end=160)
      write(6,fmt='('' *** error ***  eod process unit='',i3)') iu2
  160 do 170 k=1,2
      backspace iu1
  170 backspace iu2
      write(iu1) ib(4)
      write(iu2,50) ib(4)
      rewind iu1
      rewind iu2
      do 180 k=1,3
      read(iu1) ic(k)
  180 read(iu2,50)ic(k)
      read(iu1) ic(1)
      if(ib(4).ne.ic(1)) write(6,70) ib(4),ic(1),iu1
      read(iu2,50) ic(1)
      if(ib(4).ne.ic(1)) write(6,70) ib(4),ic(1),iu2
      rewind iu1
      rewind iu2
      write(6,fmt='('' check3 end'','' data set='',a)')ds(idsc)
      do 190 k=1,4
      read(iu1) ic(k)
  190 read(iu2,50)ic(k)
      read(iu1,end=200)
      write(6,fmt='('' *** error ***  eod process unit='',i3)') iu1
  200 read(iu2,50,end=210)
      write(6,fmt='('' *** error ***  eod process unit='',i3)') iu2
  210 backspace iu1
      backspace iu2
      write(iu1) ib(5)
      write(iu2,50) ib(5)
      rewind iu1
      rewind iu2
      do 220 k=1,4
      read(iu1) ic(k)
  220 read(iu2,50)ic(k)
      read(iu1) ic(1)
      if(ib(5).ne.ic(1)) write(6,70) ib(5),ic(1),iu1
      read(iu2,50) ic(1)
      if(ib(5).ne.ic(1)) write(6,70) ib(5),ic(1),iu2
      rewind iu1
      rewind iu2
      write(6,fmt='('' check4 end'','' data set='',a)')ds(idsc)
  300 continue
      close(11)
      close(16)
      write(6,fmt='(''         end'')')
      stop
      end
