      integeri1(10),i2(10,10),i3(10,10,10)
      integer j1(10),j2(10,10),j3(10,10,10)
      ic1=1
      ic2=1
      ic3=1
      i1(1)=1111
      i2(1,1)=2222
      i3(1,1,1)=3333
      write(6,10)
10    format(' pc46829 start')
      do 20 k=1,10
      j1(k)=ic1
      ic1=ic1+1
      do 20 j=1,10
      j2(j,k)=ic2
      ic2=ic2+1
      do 20 i=1,10
      j3(i,j,k)=ic3
      ic3=ic3+1
20    continue
      k1=1
      k2=1
      k3=1
      write(1) (i1(i),i=2,1,k1)
      write(1) ((i2(i,j),i=2,1,k1),j=2,1,k2)
      write(1) (((i3(i,j,k),i=2,1,k1),j=2,1,k2),k=2,1,k3)
      rewind 1
      read (1) (j1(i),i=2,1,k1)
      ic1=1
      do 30 k=1,10
      if(j1(k).ne.ic1)goto40
30       ic1=ic1+1
      read (1) ((j2(i,j),i=2,1,k1),j=2,1,k2)
      ic2=1
      do 31 k=1,10
      do 31 j=1,10
      if(j2(j,k).ne.ic2)goto50
  31     ic2=ic2+1
      read (1) (((j3(i,j,k),i=2,1,k1),j=2,1,k2),k=2,1,k3)
      ic3=1
      do 32 k=1,10
      do 32 j=1,10
      do 32 i=1,10
      if(j3(i,j,k).ne.ic3)goto 60
 32      ic3=ic3+1
      goto92
40    write(6,80)1
80    format(' pc46829 abnormal end (unformatted i/o) nestno=',i2)
      goto81
50    write(6,80)2
      goto81
60    write(6,80)3
      goto81
81    continue
      ic1=1
      ic2=1
      ic3=1
      do 91 k=1,10
      j1(k)=ic1
      ic1=ic1+1
      do 91 j=1,10
      j2(j,k)=ic2
      ic2=ic2+1
      do 91 i=1,10
      j3(i,j,k)=ic3
      ic3=ic3+1
91    continue
92    write(2,82) (i1(i),i=2,1,k1)
      write(2,82) ((i2(i,j),i=2,1,k1),j=2,1,k2)
      write(2,82) (((i3(i,j,k),i=2,1,k1),j=2,1,k2),k=2,1,k3)
      rewind 2
      read (2,82) (j1(i),i=2,1,k1)
      ic1=1
      do 83 k=1,10
      if(j1(k).ne.ic1)goto84
 83      ic1=ic1+1
      read (2,82) ((j2(i,j),i=2,1,k1),j=2,1,k2)
      ic2=1
      do 100  k=1,10
      do 100  j=1,10
      if(j2(j,k).ne.ic2)goto85
 100      ic2=ic2+1
      read (2,82) (((j3(i,j,k),i=2,1,k1),j=2,1,k2),k=2,1,k3)
      ic3=1
      do 110 k=1,10
      do 110 j=1,10
      do 110 i=1,10
      if(j3(i,j,k).ne.ic3)goto 86
  110     ic3=ic3+1
82    format(50i4)
      write(6,87)
87    format(' pc46829 end')
      stop
84    write(6,90)1
90    format(' pc46829 abnormal end (formatted i/o) nestno=',i2)
      stop
85    write(6,90)2
      stop
86    write(6,90)3
      stop
      end
