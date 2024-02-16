real(8)::aaa(2)
real(8)::bbb(2,3)
integer::ccc(3)
integer::ddd
bbb=3
ccc=4
ddd=3
call sub(aaa,ccc,bbb,ddd)
print *,'pass'
contains
subroutine sub(aaa,ccc,bbb,ddd)
  real (8), dimension(:), intent(out) :: aaa
  real (8), dimension(:,:), intent(in) :: bbb
  integer(4), dimension(:) :: ccc
integer(4)::ddd
  where (ddd < ccc(:))
     aaa(:) =  -bbb(:,ddd)**2
  endwhere
if(any(aaa/=[-9.0_8,-9.0_8])) print *,'err'
  return
end subroutine sub
end
