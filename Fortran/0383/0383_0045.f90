function ddd()
  ddd = 1.0
end function

procedure(),pointer:: aaa
external:: bbb
pointer :: bbb
type ty1
  procedure(real),pointer,nopass:: ccc
end type
external :: ddd

type(ty1) :: sss
sss%ccc=>ddd
bbb=>ddd
if ( 1.0 .ne. sss%ccc() ) print *,'fail'
if ( 1.0 .ne. bbb() ) print *,'fail'
print *,'pass '
end
