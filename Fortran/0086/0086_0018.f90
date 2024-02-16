  real (8)::aaa(2)
  real (8)::bbb(2,3)
integer(8)::ccc
bbb=2
ccc=3
call sub(aaa,bbb,ccc)
print *,'pass'
contains
subroutine sub(aaa,bbb,ccc)
  real (8), dimension(:), intent(out) :: aaa
  real (8), dimension(:,:), intent(in) :: bbb
integer(8)::ccc

do i=1,ccc
     aaa(:) =  bbb(:,ccc)**2
enddo
if(any(aaa/=[4.0,4.0])) print *,'err'
  return
end subroutine sub
end
