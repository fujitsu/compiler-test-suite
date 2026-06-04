      module dfun
      interface
        subroutine s(a,b,c,d)
        character*5 a,b,c,d
        optional    a,b,c
        pointer         c(:,:)
	end subroutine
      end interface
      end module
!
      program main
      use dfun
      call s(d='12345')
      end
!
      subroutine s(a,b,c,d)
      use dfun
      character*5 a,b,c,d
      optional    a,b,c
      pointer         c(:,:)
      if( present( a ) ) print *,' NG (1) ' 
      if( present( b ) ) print *,' NG (2) ' 
      if( present( c ) ) print *,' NG (3) ' 
      if( d .eq. '12345' ) then
        print *,' OK '
      else
        print *,' NG '
      endif
      end
