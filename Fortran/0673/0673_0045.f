      integer key1,key2,ia(4998)/4998*100/
      character ds(2)*4
      data ds/'seqs','seqs'/
      write(6,fmt='(''         start'')')
      open(11)
      open(12,form='unformatted')
      open(13)
      open(14,form='unformatted')
      ia(1)=1
      idsc=0
      do 200 iu=14,12,-2
      idsc=idsc+1
      iu1=iu
      iu2=iu-1
      do 20 k=1,2
      key1=k
      key2=k
      write(iu1) key1,ia,key2
   20 write(iu2,50) key1,ia,key2
      rewind    iu1
      rewind    iu2
      do 40 k=1,2
      read(iu1)  ik1,ia,ik2
      if(ik1.ne.k.or.ik2.ne.k)write(6,70) k,ik1,ik2,iu1
      read(iu2,50) ik1,ia,ik2
      if(ik1.ne.k.or.ik2.ne.k)write(6,70) k,ik1,ik2,iu2
   40 continue
   50 format(i4,100(49i4),98i4,i4)
      rewind iu1
      rewind iu2
   70 format(' *** error ***'/' compare data',z9,' result data1',z9,
     1 ' result data2' ,z9,' unit',i3)
      write(6,fmt='('' check1 end'','' data set='',a)')ds(idsc)
      rewind iu1
      rewind iu2
      read(iu1)ik1,ia,ik2
      read(iu2,50) ik1,ia,ik2
      backspace iu1
      backspace iu2
      k=1
      read(iu1)ik1,ia,ik2
      if(ik1.ne.k.or.ik2.ne.k)write(6,70) k,ik1,ik2,iu1
      read(iu2,50) ik1,ia,ik2
      if(ik1.ne.k.or.ik2.ne.k)write(6,70) k,ik1,ik2,iu2
      write(6,fmt='('' check2 end'','' data set='',a)')ds(idsc)
  200 continue
      close(11)
      close(13)
      close(14)
      write(6,fmt='(''         end'')')
      stop
      end
