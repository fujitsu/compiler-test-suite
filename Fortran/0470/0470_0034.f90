call test01()
print *,'pass'
end

subroutine test01()
type ty1
  integer  :: itb(10,20)
end type
  integer ,target,save :: itb(10,20)
type (ty1),target,save :: str(10)
type ty2
integer ,pointer :: jjj(:,:)
integer ,pointer :: ppp(:,:)=>itb(1:10:2,2:20:3)
end type
type(ty2) :: sss
do i=1,10
 do j=1,20
  itb(i,j) = i*j
 end do
enddo
sss%jjj=>itb(1:10:2,2:20:3)
do i=1,5
 do j=1,7
  if (sss%jjj(i,j).ne.sss%ppp(i,j)) print *,'err1'
 end do
end do

end
