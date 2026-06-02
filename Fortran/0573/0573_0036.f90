call s1()
end
subroutine s1()
integer,allocatable ::kk(:,:)
call sub2(NULL(kk))
contains
subroutine sub2(aa)
integer,allocatable :: aa(:,:)
allocate(aa(5,5))
end subroutine
end

