   subroutine sub(n)
    implicit none
    integer,external::n
    if (n()/=1) print *,901
    end subroutine

    implicit none
integer,external::nn
call sub(nn)
print *,'sngg169h : pass'
end
integer function nn()
    implicit none
nn=1
end

