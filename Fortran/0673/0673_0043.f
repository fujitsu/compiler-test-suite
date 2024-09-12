      integer ia(10),ib(10),ic(10)
      character ds(3)*4
      data ds/'seq ','dir ','seq '/
      dataia/z'0001000b',z'0002000c',z'0003000d',z'0004000e',
     1       z'0005000f',z'00060010',z'00070011',z'00080012',
     1       z'00090013',z'000a0014'/
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
      do 200 iu=11,15,2
      idsc=idsc+1
      iu1=iu
      iu2=iu+1
      do 10 i=1,4
      do 20 k=1,i
      write(iu1) ia(k)
   20 write(iu2,50)ia(k)
      rewind iu1
      rewind iu2
      do 80 k=1,i
      read(iu1) ic(k)
   80 read(iu2,50)ic(k)
      do 30 k=1,i
      backspace iu1
   30 backspace iu2
      do 40 k=1,i
      write(iu1)ib(k)
   40 write(iu2,50) ib(k)
      rewind iu1
      rewind iu2
      do 60 k=1,i
      read(iu1)  ic(k)
      if(ic(k).ne.ib(k)) write(6,70) ib(k),ic(k),iu1
      read(iu2,50)ic(k)
      if(ic(k).ne.ib(k)) write(6,70) ib(k),ic(k),iu2
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
      read(iu1) ic(1)
      read(iu2,50) ic(1)
      do 90 k=1,3
      backspace iu1
   90 backspace iu2
      do 100 i=1,4
      write(iu1) ia(i)
  100 write(iu2,50) ia(i)
      rewind iu1
      rewind iu2
      read(iu1) ic(2)
      if(ia(1).ne.ic(2)) write(6,70) ia(1),ic(2),iu1
      read(iu2,50)ic(2)
      if(ia(1).ne.ic(2)) write(6,70) ia(1),ic(2),iu2
      write(6,fmt='('' check2 end'','' data set='',a)')ds(idsc)
      rewind iu1
      rewind iu2
      do 110 i=1,4
      read(iu1)ic(i)
  110 read(iu2,50) ic(i)
      backspace iu1
      backspace iu2
      do 120 i=1,3
      write(iu1) ia(i+3)
  120 write(iu2,50) ia(i+3)
      rewind iu1
      rewind iu2
      do 130 i=1,6
      read(iu1) ic(i)
      if(ia(i).ne.ic(i)) write(6,70) ia(i),ic(i),iu1
      read(iu2,50) ic(i)
      if(ia(i).ne.ic(i)) write(6,70) ia(i),ic(i),iu2
  130 continue
      write(6,fmt='('' check3 end'','' data set='',a)')ds(idsc)
  200 continue
      close(11)
      close(12,status='delete')
      close(13)
      close(14)
      close(15,status='delete')
      close(16)
      write(6,fmt='(''         end'')')
      stop
      end
