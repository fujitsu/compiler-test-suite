          logical l
          data l/.true./
          character ca*22,cb*32
          open(1,file='ioct048.f01',status='new')
          do 10 i=1,5
10        write(1,'('' ** test of scratch **''/
     1               ''  open(new)-rewind-close(delete)'')')
          rewind 1
          do 20 j=1,5
          read(1,'(a/a)') ca,cb
20        write(6,'(a/a)')ca,cb
          rewind 1
          close(1,status='delete')
          inquire (file='ioct048.f01',exist=l)
          if (l.neqv..false.) go to 111
           write(6,'(1h ,'' *** test o.k ***'')')
           stop
111        write(6,'(1h ,'' *** error is detected ***'')')
          end
