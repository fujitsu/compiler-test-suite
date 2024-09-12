call s1
print *,'pass'
end
subroutine s1
character(2),allocatable::c
character(2),allocatable::ca(:)
call ss2(ca)
call ss1(c)
contains
subroutine ss1(c)
character(*),allocatable::c
c="123"
if(c/="12") print *,'err'
end subroutine
subroutine ss2(ca)
character(*),allocatable::ca(:)
ca=["123"]
if(any(ca/=["12"])) print *,'err'
end subroutine
end
