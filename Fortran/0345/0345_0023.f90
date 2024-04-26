      module mod
       type zz
         integer(4),allocatable,dimension(:)::za
       end type
      end module

      program main
       use mod
       type(zz)::a
        call sub0(a)
        call sub1(a)
        print *,'pass'
      end program

      subroutine sub0(a)
       use mod
       type(zz)::a
        allocate(a%za(1))
      end subroutine

      subroutine sub1(a)
       use mod
       type(zz)::a
        if (.not. allocated(a%za)) print *,'error'
        deallocate(a%za)
      end subroutine
