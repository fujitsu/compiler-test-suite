call test01()
print *,"pass"
end
subroutine test01()
type ty1
 integer :: i
end type
type(ty1) :: ii,jj
if (.not.same_type_as(ii,jj)) call errtra
end
subroutine errtra()
print *,'err'
end
