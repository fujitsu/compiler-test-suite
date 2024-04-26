      program main
      integer i,j,k,l,m,n
      character*10 c
      c='ok'
      i=1
      j=1
      do 10 n=2,10
        i=i+1
        if( i.eq.100 ) goto 20
        j=j+1
10    continue
20    call sub
      m=n+i+j
      l=m
      do 30 k=1,10
        i=i+1
        if( i.eq.100 ) then
          goto 40
        endif
30    continue
40    continue
      if( l.eq.31 .and. k.eq.11) then
      else
        c = 'ng'
      endif
      write(6,*) '***** '//c//' *****'
      stop
      end
      subroutine sub
      integer i,j,k
      i=1
      i=i+1
      k=i+1
      do 10 j=1,10
        k=k+1
        if ( k.eq.10 ) then
          goto 20
        endif
10    continue
20    continue
      if( i.ne.2 .or. k.ne.10 ) then
        write(6,*) ' ***** ng ***** '
      endif
      return
      end
