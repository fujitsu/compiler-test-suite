    module mod
     integer::j
     logical::l
     contains
      subroutine sub1(i,j)
        j=j+i
      end subroutine
      subroutine sub2(i)
        i=i+j
      end subroutine
      subroutine sub3(i)
        if (l) then
          if (i/=1300) print *,'error2 i->',i
        else
          if (i/=500) print *,'error1 i->',i
        endif
      end subroutine
    end module

    program main
     use mod
      i=200
      j=100
      write(1,'(i4)') j
      write(1,'(i4)') i
      rewind (1)
      read(1,'(i4)') j
      read(1,'(i4)') i
      l=.false.
      call sub1(i,j)
      call sub2(i)
      call sub3(i)
      l=.true.
      call sub1(i,j)
      call sub2(i)
      call sub3(i)
      print *,'pass'
    end program
