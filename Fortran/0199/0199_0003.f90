call test01()
print *,'pass'
end
subroutine test01()
integer ,target,save  :: ita(10,20)
type ty1
  integer ,pointer :: ipa(:,:)=>ita(1:10:1,1:20:1)
  integer          :: ipat(10,20)
end type
type (ty1),target,save :: str(3)
type ty2
  integer ,pointer :: ipb(:,:)=>str(1)%ipat
end type
type (ty2) :: strxxx(3)

ita=reshape((/(i,i=1,200)/),(/10,20/))
strxxx(1)%ipb=>ita
do i=1,10
 do j=1,20
   if (str(1)%ipa(i,j).ne.strxxx(1)%ipb(i,j)) print *,'err1'
 end do
enddo
end
