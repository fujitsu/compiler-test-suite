      dimension a(10),b(10),c(10),d(10)
      data a/1,2,3,4,5,6,7,8,9,10/
      data b/0,2,2,4,4,6,5,8,7,0/
      data c/10*1.0/,d/10*3.0/
      logical l(10)/.true.,.false.,.true.,.false.,.true.,
     *              .true.,.false.,.true.,.false.,.true./
      do 10 i=2,10
        if ( l(i) ) then
          if ( a(i) .gt. b(i) ) then
            s = a(i)    + b(i)
            c(i) = c(i-1) + s
          else
            t = a(i) * b(i)
            c(i) = c(i-1) / t
          endif
        endif
  10  continue
      write(6,*) c,' i = ',i
      write(6,*) d
      stop
      end
