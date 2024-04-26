      real*4    a(10),b(10),c(10),d(10)
      data      a/1,2,3,4,5,6,7,8,9,10/
      data      b/1,1,4,6,6,6,7,7,7,10/
      data      c/1,2,3,4,5,6,7,8,9,10/
      data      d/1,1,4,6,6,6,7,7,7,10/
      logical*4 l(10)/.true.,.false.,.true.,.false.,.true.,
     *                .false.,.true.,.false.,.true.,.false./
      logical*4 l1,l2,lans(10)/10*.false./
c
      write(6,*) ' -- loop 1 -- '
      do 10 i=1,10
        l1 = a(i) .gt. b(i)
        if (l(i)) then
          l1 = .false.
        else
          l1 = .true.
        endif
        lans(i) = l1
  10  continue
      write(6,*) lans
      write(6,*) ' -- loop 2 -- '
      do 20 i=1,10
        l1 = a(i) .gt. b(i)
        l2 = c(i) .eq. d(i)
        is2 = i
        if (l(i)) then
          l1 = l2
        else
          l1 = .false.
        endif
        lans(i) = l1
  20  continue
      write(6,*) lans
      stop
      end
