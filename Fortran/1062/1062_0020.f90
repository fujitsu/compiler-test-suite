   subroutine sub(f)
    implicit none
    integer::f
    external::f
    if (f()/=1) print *,901
    end subroutine

    implicit none
integer,external::nn
call sub(nn)
print *,'sngg170h : pass'
end
integer function nn()
    implicit none
nn=1
end

