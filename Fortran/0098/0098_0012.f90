  interface
    subroutine sub(n)
    character(len=n) :: arr(3)
    end subroutine
    end interface
    integer :: ii=3
call sub(ii)
    print *,"Pass"
    contains
end

    subroutine sub(n)
    character(len=n) :: arr(3)
    arr = 'abc'
    if(len(arr) /=3) print *,101
    end subroutine
