      program main
      dimension a(10),b(10),c(10),d(10),e(10),f(10),g(10),h(10)
      data a/1,2,3,4,5,6,7,8,9,10/
      data b/0,2,0,4,0,6,0,8,0,10/
      data c/10*0.0/,d/10*1.0/,e/10*0./,f/10*2./,g/10*0./,h/10*3./
      logical*4 l4(10)
      logical*1 l1(10)/.true.,.false.,.true.,.false.,.true.,
     *                 .true.,.false.,.true.,.false.,.true./
      do 10 i=1,10
        l1(i) = a(i) .gt. b(i)
        if ( l1(i) ) then
          c(i) = sqrt(d(i))
        endif
        l4(i) = l1(i)
        if ( l4(i) ) then
          e(i) = f(i)
          if ( l1(i) ) then
             g(i) = h(i)
          endif
        endif
  10  continue
      write(6,*) l1
      write(6,*) c
      write(6,*) l4
      write(6,*) e
      write(6,*) g
      stop
      end
