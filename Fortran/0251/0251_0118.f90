call ss
end

subroutine ss
type tt
 integer :: i=2
end type

type,extends(tt) :: tt2
 integer :: j = 3
end type

class(*),pointer :: ptr(:)
type(tt2),target :: tgt(7)

tgt(1)%j=4
tgt(6:7)%j=4
ptr=>tgt

associate(ptr=>ptr([1,6,7]))
block
class(*),pointer :: ptr(:)
type,extends(tt) :: tt2
 integer :: j=33
end type

type(tt2),target :: tgt(7)

tgt(1)%j=44
tgt(6:7)%j=44
ptr=>tgt

select type(ptr=>ptr(2:5))
type is(tt2)
 if(any(ptr%j/=33)) print*,101
class default
 print*,102
end select

select type(ptr)
type is(tt2)
 if(any(ptr([1,6,7])%j/=44) .or. any(ptr(2:5)%j/=33)) print*,107
class default
 print*,108
endselect
end block

select type(ptr)
type is(tt2)
 if(any(ptr%j/=4)) print*,111
class default
 print*,112
end select
end associate

select type(ptr=>ptr(2:5))
type is(tt2)
 if(any(ptr%j/=3)) print*,103
class default
 print*,104
end select

select type(ptr)
type is(tt2)
 if(any(ptr([1,6,7])%j/=4) .or. any(ptr(2:5)%j/=3)) print*,109
class default
 print*,110
endselect

print*,'pass'
end subroutine
