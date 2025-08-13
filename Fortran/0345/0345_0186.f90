    module mod2
      contains
      subroutine subsubsub(jj,rrr)
        kk=jj-2
        rrr = rrr + real(kk)
      end subroutine
    end module

    module mod1
     use mod2
     contains
      subroutine subsub(ii,rrr)
        jj=ii+2
        call subsubsub(jj,rrr)
      end subroutine
    end module

    program ompv2
      i=10
      call sub(i)
    end program

    subroutine sub(i)
     use mod1
      character*9::ch
      rrr=0.0
      do ii=1,i
        call subsub(ii,rrr)
      enddo
      write(13,'(e9.2)') rrr
      rewind (13)
      read(13,'(9a)') ch
      if (ch /=' 0.55E+02') print *,'error ch ->',ch
      print *,'pass'
    end subroutine sub
