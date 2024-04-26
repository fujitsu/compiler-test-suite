integer(kind=1),pointer :: p1 (:), s1(:)
real(kind=4),pointer :: p4 (:), s4(:)
allocate(p1(4))
allocate(p4(4))
p1 = (/1,2,3,4/)
p4 = (/1.0,2.0,3.0,4.0/)
s1(4:) => p1
s4(4:) => p4
print *,s1
print *,lbound(s1),ubound(s1)
print *,s4
print *,lbound(s4),ubound(s4)
print *,'ok'
end
