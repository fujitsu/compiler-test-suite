        module moda
        common /cmn/ ppp
        real,pointer :: ppp
        real,target :: ppp_t
        contains
          subroutine init()
            ppp=>ppp_t
            ppp_t=8
          end subroutine
        end module

        use moda
        call init()
        end
