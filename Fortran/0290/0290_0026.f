      subroutine sub(i,j)
      j=2
      select case(i)
      case (-100)
        j=1
      case (0)
	j=0
      case (100)
	j=-1
      end select
      end
      program main
      logical l/.true./
      call sub(-100,i)
      if( i.ne.1 ) l = .false.
      call sub(100,i)
      if( i.ne.-1 ) l = .false.
      call sub(0,i)
      if( i.ne.0 ) l = .false.
      call sub(2,i)
      if( i.ne.2 ) l = .false.
      if( l ) then
	 print *,' OK '
      else
	 print *,' NG '
      endif
      end

