call test01()
print *,'pass'
end

subroutine test01()
allocatable::ia(:)
allocate(ia(10))
call sub(ia)
if (allocated(ia) .neqv. .false.) write(6,*) "NG"
contains
subroutine sub(iaa)
allocatable::iaa(:)
intent(out) :: iaa
end subroutine
end

