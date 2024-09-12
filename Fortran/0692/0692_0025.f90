type x
 character(2),allocatable::c(:)
end type
 type(x)::v
integer n(2)
character(2),allocatable::c(:)
allocate(c(2),v%c(2))
c=(/'1,','2 '/)
read(c,'(i1/i1)') n
if (n(1)/=1)print *,'error-1'
if (n(2)/=2)print *,'error-2'
v%c=(/'3,','4 '/)
read(v%c,'(i1/i1)') n
if (n(1)/=3)print *,'error-1'
if (n(2)/=4)print *,'error-2'
print *,'pass'
end
