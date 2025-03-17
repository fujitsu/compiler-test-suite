        module mo
        real a
        contains
        subroutine gsub()
        a=100
        end subroutine
        end module
        use mo
        common //b
        call gsub
        b=200
        print *,a,b
        end
