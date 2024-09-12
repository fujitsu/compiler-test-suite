        module mod
        interface ieee_selected_real_kind
        module procedure::ieee_selected_real_kinda
        end interface
        type ieee_selected_real_kind
        integer :: ri =1
        integer :: jj =1
        integer :: radix =1
        end type
        contains
        function ieee_selected_real_kinda(ri,jj,radix)
        integer :: ri,jj,radix
        optional :: ri,jj
        intent(in) :: ri,jj
        intent(out) :: radix
        radix=1
        ieee_selected_real_kinda = 4
        end function
        end

        use mod
        call sss()
        print *,'pass'
        contains
        subroutine sss()
        use mod
        integer :: kk
        n=ieee_selected_real_kind(1,radix=kk)
        if (n /=4) print *,101,n
        end subroutine
        end

