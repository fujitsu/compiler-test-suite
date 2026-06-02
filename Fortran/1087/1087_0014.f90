type ty1
integer :: var(1)
end type
type(ty1) :: str
str=ty1(2)
associate(ia=>str)
block
integer :: arr(ia%var(1)),jj
integer :: brr1(1:ia%var(1))
integer :: brr2(ia%var(1):2)
integer :: brr3(2,1:ia%var(1))
integer :: brr4(2,ia%var(1):2)
character(ia%var(1)) :: cha1,cha2
if (len(cha1) .ne.2) print *,'ng1'
if (len(cha2) .ne.2) print *,'ng2'
if (size(arr).ne.2) print *,'ng'
if (size(brr1).ne.2) print *,'ng'
if (size(brr2).ne.1) print *,'ng'
if (size(brr3).ne.4) print *,'ng'
if (size(brr4).ne.2) print *,'ng'
jj=ia%var(1)
if (jj.ne.2) print *,'ng'
end block
end associate
print *,'pass'
end
