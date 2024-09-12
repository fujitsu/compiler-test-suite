       dimension ia(100),ib(100)
       write(6,100)
 100   format(5x,'        test start')
       write(6,200)
 200   format(5x,'*** if 5,3,2,5,3,2(6 line) is output ok ok ***')
       open(10,recl=100,access='direct')
       open(20,recl=200,access='direct')
       open(30,recl=400,access='direct')
       do 10 i=1,100
 10    ia(i)=i
       write(10,rec=1) ia(1:25)
       write(10,rec=2) ia(26:50)
       write(10,rec=3) ia(51:75)
       write(10,rec=4) ia(76:100)
       inquire(10,nextrec=ix1)
       write(6,1) ix1
  1    format(5x,'next recno=',i3)
       write(20,rec=1) ia(1:50)
       write(20,rec=2) ia(51:100)
       inquire(20,nextrec=ix2)
       write(6,1) ix2
       write(30,rec=1) ia
       inquire(30,nextrec=ix3)
       write(6,1) ix3
       ix1=0
       ix2=0
       ix3=0
       read(10,rec=1) ib(1:25)
       read(10,rec=2) ib(26:50)
       read(10,rec=3) ib(51:75)
       read(10,rec=4) ib(76:100)
       inquire(10,nextrec=ix1)
       write(6,1) ix1
       read(20,rec=1) ib(1:50)
       read(20,rec=2) ib(51:100)
       inquire(20,nextrec=ix2)
       write(6,1) ix2
       read(30,rec=1) ib
       inquire(30,nextrec=ix3)
       write(6,1) ix3
       write(6,400)
 400   format(5x,'**         test ended ***')
       stop
       end
