         module kwcard
           implicit none
           type card
             class(*), pointer :: p => null()
           contains
             procedure, private :: setcard
            generic :: assignment(=) => setcard
           end type card

          type keyword
            integer n
            type(card), dimension(:), allocatable :: set
          end type keyword

         type :: gm
            integer gmid, lca, lcv, lcd
          end type gm
        contains
          subroutine setcard(this,v)
           class(card), intent(inout) :: this
            class(*), intent(in) :: v
          end subroutine setcard
        end module kwcard

       program main
         use kwcard
          implicit none
          type(gm) :: gmc
          type(card) :: set

          set=gmc
print *,'pass'
        end program main
