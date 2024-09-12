      ist1=0
      write(6,6200)
      open(8,access='direct',iostat=ist1,status='old',
     *       file='ioct022.f01',recl=1260,err=100)
      write(6,*) ' ** err branch ng ng ng **'
      goto 101
  100 continue
      write(6,*) ' ** err branch ok ok ok **'
  101 continue
      open(8,access='direct',iostat=ist1,status='new',
     *       file='ioct022.f01',recl=1260)
      write(6,6000) ist1
       write(8,rec=1) ist1
      ist1=99
      close(8,iostat=ist1,status='delete')
      write(6,6100) ist1
      stop
 6000 format(1h ,' open  iostat=',i3)
 6100 format(1h ,'close  iostat=',i3)
 6200 format('         start open(error)-open(nomal)- write-close')
 6500 format(' ***** ok ******** ')
 6400 format(' ****** error ********')
      end
