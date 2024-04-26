      subroutine sub(str)
       type aa
         integer(4)::ii
         integer(4)::jj
       end type
       type (aa)::str
        str=aa(1,2.0)
      end subroutine

      program main
       type aa
        sequence
         integer(4)::ii
         integer(4)::kk
       end type
       type (aa)::str=aa(0,0)
        call sub(str)
        if (str%ii/=1.or.str%kk/=2) print *,str
        print *,'pass'
      end program
