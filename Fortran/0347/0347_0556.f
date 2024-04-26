      program main
      real*4  a(10),b(10),c(10),aa(10),aaa(10)
      integer*4  m,imax
      data  a/2.d0,4.d0,6.d0,8.d0,10.d0,12.d0,14.d0,16.d0,18.d0,20.d0/
      data  b/-2.d0,-4.d0,-6.d0,-8.d0,-10.d0,-12.d0,-14.d0,-16.d0,
     *        -18.d0,-20.d0/
      data  aa/1.d0,5.d0,0.d0,8.d0,7.d0,9.d0,0.d0,3.d0,3.d0,4.d0/
      data  m/10/,imax/1/

      do 11 i=1,10
        if(a(i).gt.a(imax)) then
          imax=i
        endif
   11 continue
      write(6,*) 'all carry out ***   ',imax

      imax=1
      if(m.lt.10) then
        do 22 i=1,10
          if(b(i).gt.b(imax)) then
            imax=i
          endif
   22   continue
      endif
      write(6,*) 'no carry out ***   ',imax

      imax=1
      do 33 i=1,10
        c(i)=a(i)+b(i)
        if(c(i).eq.0) then
          c(i)=c(i)+1.d0
          if(c(i).gt.c(imax)) then
            imax=i
          endif
        endif
   33 continue
      write(6,*) 'max of c ***   ',imax

      imax=1
      do 44 i=1,10
        a(i)=aa(i)
        if(a(i).gt.a(imax)) then
          imax=i
        endif
   44 continue
      write(6,*) 'index no.1 ***   ',imax

      imax=1
      do 55 i=1,10
        a(i)=aa(i)
        if(a(i).gt.a(imax)) then
          a(imax)=a(i)
          imax=i
        endif
   55 continue
      write(6,*) 'index no.2 ***   ',imax

      imax=1
      do 66 i=1,10
        if(a(i).gt.a(imax)) then
          imax=i
          a(i)=b(i)+c(i)
        endif
        aaa(i)=a(i)
   66 continue
      write(6,*) 'index no.3 ***   ',imax
      stop
      end
