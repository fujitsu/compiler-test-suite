      dimension a(10),b(10),c(10)
      do 10 i=1,10
       a(i)= i
       b(i)= 100-i
  10  continue
      r=99
      do 20 i=1,10
       c(i)=a(i)-r
       if (r.gt.8.) then
         b(i)=r
         r=c(i)
       else
         r=a(i)
       end if
  20  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) r
      stop
      end
