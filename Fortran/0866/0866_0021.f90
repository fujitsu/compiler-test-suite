class(*),allocatable::c(:)
character(5)::a,b
a="abcde"
b="12345"
c=[ character(len=4) :: a(1:), b(:5),"12345"(:5)]
select type(c)
type is(character(*))
if(len(c)/=4) print *,'err1'
if(c(1)//"1"/="abcd1") print *,'err2'
if(c(2)//"1"/="12341") print *,'err3'
if(c(3)//"1"/="12341") print *,'err4'
end select
c=[ character(len=3) :: a(2:), b(:4),"12345"(:)]
select type(c)
type is(character(*))
if(len(c)/=3) print *,'err11'
if(c(1)//"1"/="bcd1") print *,'err22'
if(c(2)//"1"/="1231") print *,'err33'
if(c(3)//"1"/="1231") print *,'err44'
end select
i=2
j=4
c=[ character(len=3) :: a(i:), b(:j),"12345"(i:j)]
select type(c)
type is(character(*))
if(len(c)/=3) print *,'err111'
if(c(1)//"1"/="bcd1") print *,'err222'
if(c(2)//"1"/="1231") print *,'err333'
if(c(3)//"1"/="2341") print *,'err444'
end select

c=[ character(len=0) :: a(i:), b(:j),"12345"(i:j)]
select type(c)
type is(character(*))
if(len(c)/=0) print *,'err5'
if(c(1)//"1"/="1") print *,'err6'
if(c(2)//"1"/="1") print *,'err7'
if(c(3)//"1"/="1") print *,'err8'
end select

print *,'pass'
end
