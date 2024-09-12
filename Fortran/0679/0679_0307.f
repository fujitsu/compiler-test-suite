      dimension a(10),b(10),c(10),l(10)
      logical*4 m(10)
      data a/10*0/
      data b/1,2,3,1,2,3,1,2,3,1/
      data c/1,2,1,2,1,2,1,2,1,2/
      data l/1,2,3,1,2,3,1,2,3,1/,is/3/
      data m/2*.true.,2*.false.,2*.true.,2*.false.,2*.true./

      do 10 i=1,10
       if (.not.m(i)) go to 10
        a(i) = b(i)**l(i)
  10  continue
      write(6,*) a

      do 20 i=1,10
       if (.not.m(i)) go to 20
        a(i) = b(i)**is
  20  continue
      write(6,*) a

      do 30 i=1,10
       if (.not.m(i)) go to 30
        a(i) = c(i)**i
  30  continue
      write(6,*) a
      stop
      end
