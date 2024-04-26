      module mod
        type aa
          integer(4)::ii
          integer(4),pointer::jj
        end type
      contains
        subroutine sub(str)
          type (aa)::str
  
          str=aa(2,null())
        end subroutine
      end module

      program main
       use mod
        type (aa)::str=aa(0,null())
        call sub(str)
        if (str%ii/=2) print *,'error1'
        if (associated(str%jj)) print *,'error2'
        print *,'pass'
      end program
