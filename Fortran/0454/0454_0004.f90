
call test01()
print *,'pass'
end
subroutine test01()
integer ,target,save  :: ita(10,20)
type ty1
  integer ,pointer :: ipa(:,:)
  integer ,pointer :: ipb(:,:)
end type
type (ty1) :: str(3)
data str(1)%ipa /ita/

ita=reshape((/(i,i=1,200)/),(/10,20/))
str(1)%ipb=>ita
do i=1,10
 do j=1,20
   if (str(1)%ipa(i,j).ne.str(1)%ipb(i,j)) print *,'err1'
 end do
enddo
end

