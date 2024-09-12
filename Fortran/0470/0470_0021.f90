call test01()
print *,'pass'
end

subroutine test01()
type ty1
  integer  :: ita(10,20)
end type
type (ty1),target,save :: str(1)
integer ,pointer :: iii(:,:)=>str(1)%ita
integer ,pointer :: jjj(:,:)
jjj=>str(1)%ita
str(1)%ita=1
do i=1,10
 do j=1,20
   if (iii(i,j).ne.jjj(i,j)) print *,'err1'
 end do
enddo
end
