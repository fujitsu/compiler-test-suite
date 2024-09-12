        logical l,l1
        data l,l1/2*.true./
          open(1,file='ioct049.f01',status='unknown',
     1           blank='null')
          do 10 i=1,5
10        write(1,'(''1 2 3 4 5 '',i5)')i
          rewind 1
          do 20 i=1,5
          read(1,'(i10,i5)')i1,i2
          if(i1.ne.12345.or.i2.ne.i) then
            write(6,'(1h ,''*** error is detected ***'')')
          write(6,'(1h ,i10,2x,i5)')i1,i2
          else
          endif
20        continue
          rewind 1
          open(1,file='ioct049.f01',blank='zero')
          do 30 i=1,5
          read(1,'(i10,i5)')i1,i2
          if(i1.ne.1020304050.or.i2.ne.i) then
          write(6,'(1h ,''*** error is detected ***'')')
          write(6,'(1h ,i10,2x,i5)')i1,i2
          else
          endif
30        continue
          rewind 1
          open(1,blank='null')
          do 40 i=1,5
          read(1,'(i10,i5)')i1,i2
          if(i1.ne.12345.or.i2.ne.i) then
          write(6,'(1h ,''*** error is detected ***'')')
          write(6,'(1h ,i10,2x,i5)')i1,i2
          else
          endif
40        continue
          rewind 1
          open(1,file='ioct049.f02',blank='zero',status='unknown')
          do 35 i=1,5
35        write(1,'(''1 2 3 4 5 '',i5)')i
          rewind 1
          do 50 i=1,5
          read(1,'(i10,i5)')i1,i2
          if(i1.ne.1020304050.or.i2.ne.i) then
          write(6,'(1h ,''*** error is detected ***'')')
          write(6,'(1h ,i10,2x,i5)')i1,i2
          else
          endif
50        continue
          close(1,status='delete')
          open(1,file='ioct049.f01')
          close(1,status='delete')
          inquire(file='ioct049.f02',exist=l)
          inquire(file='ioct049.f01',exist=l1)
          if(l.eqv..true..or.l1.eqv..true.) then
            write(6,'(1h ,''*** error is detected ***'')')
            write(6,'(1h ,''*** deleted file exists ***'')')
          else
          endif
          write(6,'(1h ,''*** ok terminated ***'')')
          end
