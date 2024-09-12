character(:),allocatable::ch1,ch2
ch1="1234"
ch2=ch1
call s(ch1,ch2)
print *,'pass'
contains
subroutine s(ch1,ch2)
class(*),allocatable::a1,a2,a3
class(*),pointer::b1,b2,b3
character(*)::ch1
character(*),target::ch2
a1=ch1(1:)
a2=ch1(:4)
a3=ch1(:)
b1=>ch2(1:)
b2=>ch2(:4)
b3=>ch2(:)


call r(a1)
call r(a2)
call r(a3)
call r(b1)
call r(b2)
call r(b3)
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
