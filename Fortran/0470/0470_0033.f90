integer ,target,save :: itb(10)
type ty2
integer ,pointer :: jjj(:)
integer ,pointer :: ppp(:)=>itb(1:10:2)
end type
integer ,pointer :: kkk(:)=>itb(1:10:2)
type(ty2) :: sss
do i=1,10
  itb(i) = i
enddo
sss%jjj=>itb(1:10:2)
do i=1,5
 do j=1,7
  if (sss%jjj(i).ne.sss%ppp(i)) print *,'err1'
 end do
end do
print *,'pass'
end
