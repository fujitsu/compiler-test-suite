      program main
      character*100 c(10)
      character*100 d(10)
      call sub1(c)
      if( c(5)(5:5) .eq. 'a' ) then
        write(6,*) ' ok1'
      else
        write(6,*) ' ng1'
      endif
      call ent1(d,c)
      if( d(3)(5:5) .eq. 'a' ) then
        write(6,*) ' ok2'
      else
        write(6,*) ' ng2'
      endif
      stop
      end
      subroutine sub1(c)
      character*(*) c(10)
      character*(*) d(10)
      c(5)='1111a22222'
      return
      entry ent1(d,c)
      d(3)=c(5)
      return
      end
