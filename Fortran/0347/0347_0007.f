      dimension a(10),b(10),c(10),d(10)
      character*10 c/10*'          '/
      do 10 i=1,10
       read(5,*) a(i)
       b(i)=a(i)/2.
  10  continue
      write(6,*) a
      do 20 i=1,10
       d(i)=func(b(i))
  20  continue
      write(6,*) d
      do 30 i=1,10
       if (d(i).ge.b(i)) then
        c(i)='abcdefgh'
       end if
  30  continue
      write(6,*) c
      do 40 i=1,10
       if (c(i)(1:2).eq.'ab') then
        d(i)=b(i)*d(i)
       end if
  40  continue
      write(6,*) d
      stop
      end
      function func(r)
      func=r**2
      return
      end
