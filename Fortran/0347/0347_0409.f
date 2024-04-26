      program main
      dimension a(50),b(50)
      do 11 j=1,50
      b(j)=j
  11  a(j)=j
      do 10 i=1,50
        b(i)=i*1.2
        if(a(i).ge.25) go to 500
        b(i)= 0.1
  10  continue

 500  write(6,*) a
      write(6,*) b
      stop
      end
