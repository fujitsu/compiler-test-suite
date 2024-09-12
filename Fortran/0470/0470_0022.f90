call test01()
print *,'pass'
end

subroutine test01()
type ty1
  integer  :: ita(10,20)
  integer  :: itb
end type
type (ty1),target,save :: str(1),sss(10,20)
integer ,pointer :: iii(:,:)
integer ,pointer :: jjj(:,:)
data  iii /1*str(1)%ita/
str(1)%ita=1
if (iii(1,1).ne.1) print *,'err'

end
