call test01()
print *,'pass'
end

subroutine test01()
type ty1
  integer(4) :: aaa
  integer  :: itb(10,20)
end type
type (ty1),target,save :: str(10)
integer ,pointer :: jjj(:,:),kkk(:,:)
data jjj /1*str(2)%itb(1:10:2,2:20:3)/
do i=1,10
 do j=1,20
  str(2)%itb(i,j) = i*j
 end do
enddo
kkk=>str(2)%itb(1:10:2,2:20:3)
do i=1,5
 do j=1,7
  if (jjj(i,j).ne.kkk(i,j)) print *,'err1'
 end do
end do
end
