type :: str01
integer(kind=1),pointer :: p1 (:), s1(:)
end type
type :: str02
real(kind=4),pointer :: p4 (:), s4(:)
end type
type (str01) :: sss01
type (str02) :: sss02
allocate(sss01%p1(4))
allocate(sss02%p4(4))
sss01%p1 = (/1,2,3,4/)
sss02%p4 = (/1.0,2.0,3.0,4.0/)
sss01%s1(4:) => sss01%p1
sss02%s4(4:) => sss02%p4
print *,sss01%s1
print *,lbound(sss01%s1),ubound(sss01%s1)
print *,sss02%s4
print *,lbound(sss02%s4),ubound(sss02%s4)
print *,'ok'
end
