      dimension a(100),b(10)
      data b/1.0,2.0,3.0,4.0,5.0,10.0,20.0,30.0,40.0,50.0/
      write(6,*) '                  **'
      write(6,*) ' ** check the read and compare value **'
      do 20 j=1,5
      do 10 i=1,100
   10 a(i)=j
      write(1) a
   20 continue
      rewind 1
      do 30 i=1,5
   30 read(1) a
      do 40 i=1,5
      do 50 j=1,100
   50 a(j)=10*i
      write(1) a
   40 continue
      rewind 1
      write(6,150)
  150 format('    read value       compare value')
      do 100 i=1,10
      read(1) a
  100 write(6,111) a(1),b(i)
  111 format(3x,e15.7,2x,e15.7)
      write(6,*) ' **         ended **'
      stop
      end
