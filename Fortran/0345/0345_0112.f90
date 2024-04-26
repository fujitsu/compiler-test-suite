      subroutine sub(str)
        type aa
          sequence
          integer(4)::ii
          integer(4),pointer::jj
        end type
        type (aa)::str

        str=aa(1,null())
      end subroutine

      program main
        type aa
         sequence
          integer(4)::ii
          integer(4),pointer::jj
        end type
        type (aa)::str=aa(0,null())
        interface
          subroutine sub(str)
            type aa
              sequence
              integer(4)::ii
              integer(4),pointer::jj
            end type
            type (aa)::str
          end subroutine
        end interface
        call sub(str)
        if (str%ii/=1) print *,str%ii
        if (associated(str%jj)) print *,'error'
        print *,'pass'
      end program
