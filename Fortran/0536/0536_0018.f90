character(4)::ch2
ch2="1234"
call s(ch2)
print *,'pass'
contains
subroutine s(ch2)
class(*),pointer::b1,b2,b3,b4,b5,b6
character(*),target::ch2
i=1
j=4
b1=>ch2(1:j)
b2=>ch2(i:4)
b3=>ch2(i:)
b4=>ch2(:j)
b5=>ch2(1:i*j)
b6=>ch2(1:4*i)

call r(b1)
call r(b2)
call r(b3)
call r(b4)
call r(b5)
call r(b6)
end subroutine s
subroutine r(a)
class(*)::a
select type(a)
type is(character(*))
if(len(a)/=4) print *,'err1'
if(a//"a"/="1234a") print *,"err2"
end select

end subroutine r
end
