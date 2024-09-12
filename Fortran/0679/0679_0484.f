      program main
      logical*4 l4a(10),l4b(10),l4c(10),l4t1,l4t2
      real*4    ra(10),rb(10),rc(10)
      integer*4 l(10)/1,2,3,4,5,6,7,8,9,10/
      data l4a/5*.true.,5*.false./,l4b/3*.true.,5*.false.,2*.true./
      data l4c/5*.true.,5*.false./
      data ra/5*1.0,5*2.0/,rb/3*1.0,5*2.0,2*1.0/
      data rc/5*1.0,5*2.0/
      do 10 i=1,10
        l4t1=ra(i).ge.rb(i)
        if (i.ge.3.and.i.le.8) then
          l4t2=rb(i).le.rc(i)
          l4a(i)=l4t1
          l4b(i)=l4t2
          l4c(l(i))=l4t1
        endif
10    continue
      write(6,*) 'l4a=',l4a
      write(6,*) 'l4b=',l4b
      write(6,*) 'l4c=',l4c
      stop
      end
