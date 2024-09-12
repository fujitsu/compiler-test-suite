      write(6,*)' same file de open->close->open->  '
      write(6,*)' write->close test     (no.1/2) '
      write(6,*)
      open(1,file='ioct024.f01',access='direct',recl=80)
      do 10 i=1,100
   10 continue
      close(1)
      open(1,file='ioct024.f01',access='direct',recl=80)
      do 20 i=1,100
        write(1,rec=i) i
   20 continue
      close(1,status='delete')
      write(6,*) '         end '
      stop
      end
