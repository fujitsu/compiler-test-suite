      dimension a(10),b(10),c(10)
      data a/10*1.0/,b/10*2.0/,c/10*1.0/
      logical l(10)/.true.,.false.,.true.,.false.,.true.,
     *              .true.,.false.,.true.,.false.,.true./
      do 10 i=2,10
        if ( l(5) ) then
          s = sqrt(a(i)) + b(i)
          c(i) = c(i-1) + s
        endif
  10  continue
      write(6,*) c,' i = ',i
      stop
      end
