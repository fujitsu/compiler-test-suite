call s1(3)
print *,'pass'
contains
subroutine s1(l)
character(l),allocatable::a
a="123"
a="12345"
if(a/="123") print *,'err'
end subroutine
end
