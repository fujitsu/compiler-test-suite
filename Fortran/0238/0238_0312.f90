subroutine sub01(x)
  use impmod
        type(type1),intent(in) :: x
        if (x%a/=5) print *,101
        if (len/=4) print *,102
end subroutine sub01
module impmod

        type type1
                integer :: a
        end type

        type type2
                private
                integer :: a
                real :: b
        end type

        type type3
                private
                integer :: a
                character :: b
        end type

        type type4
                private
                integer :: a
                real(8) :: b
        end type

        integer, parameter :: Len = 4
        integer x0, y1
        integer, parameter :: z = 0

        interface


                subroutine sub00()
                        import Len, type1
                end subroutine


               subroutine sub01(x)
                       import type1,Len
                       type(type1), intent(in) :: x
       end subroutine


                subroutine sub03(x, y)
                        import type1, Len, z
                        type(type1), intent(in) :: x
                        real(Len) y
                end subroutine


                subroutine sub08(x, y)
                       import :: type1, type2, type3, type4, Len, x0, y1, z
                        type(type1), intent(in) :: x
                        real(Len) y
                end subroutine


        end interface



end module

program test_import
        use impmod
        type(type1) :: x
        x%a = 5
        call sub01(x)

print *,'pass'
end program

