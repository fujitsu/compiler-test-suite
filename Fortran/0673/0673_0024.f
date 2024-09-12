       dimension ia(100),ib(100)
       write(6,100)
 100   format(5x,'        test start')
       write(6,200)
 200   format(5x,'** if next recno=5,3,2(1 line) is output ok ok **')
       open(10,access='direct',recl=100)
       open(20,access='direct',recl=200)
       open(30,access='direct',recl=400)
       do 10 i=1,100
 10    ia(i)=i
       write(10,rec=1) ia(1:25)
       write(10,rec=2) ia(26:50)
       write(10,rec=3) ia(51:75)
       write(10,rec=4) ia(76:100)
       write(20,rec=1) ia(1:50)
       write(20,rec=2) ia(51:100)
       write(30,rec=1) ia
       inquire(10,nextrec=ix1)
       inquire(20,nextrec=ix2)
       inquire(30,nextrec=ix3)
       write(6,1) ix1,ix2,ix3
  1    format(5x,'next recno=',i3,2x,i3,2x,i3)
       write(6,201)
 201   format(5x,'** if 5,3,2(1 line) is output ok ok **')
       write(6,*) ix1,ix2,ix3
       ix1=0
       ix2=0
       ix3=0
       write(6,202)
 202   format(5x,'** if next recno=5,3,2(3 line) is output ok ok **')
       read(10,rec=1) ib(1:25)
       read(10,rec=2) ib(26:50)
       read(10,rec=3) ib(51:75)
       read(10,rec=4) ib(76:100)
       inquire(10,nextrec=ix1)
       write(6,2) ix1
  2    format(5x,'next recno=',i3)
       read(20,rec=1) ib(1:50)
       read(20,rec=2) ib(51:100)
       inquire(20,nextrec=ix2)
       write(6,2) ix2
       read(30,rec=1) ib
       inquire(30,nextrec=ix3)
       write(6,2) ix3
       write(6,400)
 400   format(5x,'**         test ended ***')
       stop
       end
