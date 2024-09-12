       integer*4 a(10),b(10)
       write(6,*) ' ***                 *****'
       open(15,form='unformatted')
       open(20)
       open(25,form='unformatted')
       do 10 i=1,10
       a(i)=i
       write(15) i
       write(20,*) a(i)
       write(25) a(i)
 10    continue
       rewind 25
       do 30 i=1,10
       read(25) b(i)
 20    if (a(i) .ne. b(i)) go to 30
       write(6,*) ' ***** ok *****'
       go to 40
 30    write(6,*) ' ***** ng *****'
 40    continue
       close(15)
       close(20,status='delete')
       close(25)
       stop
       end
