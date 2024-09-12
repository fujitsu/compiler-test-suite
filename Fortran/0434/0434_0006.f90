type :: str
  integer,allocatable :: i(:,:)
end type
type(str) :: sss(10+10)
integer::iii(10*10)
iii=1
sss = str(reshape([iii],[10,10]))
if(size(sss)/=20) print *,'err'
print *,'pass'
end
