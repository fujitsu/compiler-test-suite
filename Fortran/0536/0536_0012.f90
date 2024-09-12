class(*),allocatable:: a1,a2,a3,a4,a5,a6,a7,a8
character(5)::ch
i=2
j=4
k=1
ch='abcde'
a1='abcde'(:i)
a2='abcde'(j:)
a3='abcde'(k:)
a4=''(k:0)
a5='abcde'(:i*1)
a6=ch(k:)
a7=ch(k:5)
a8='abcde'(1:i)
call nomsg1(a1)
call nomsg1(a2)
call nomsg2(a3)
call nomsg3(a4)
call nomsg1(a5)
call nomsg2(a6)
call nomsg2(a7)
call nomsg1(a8)
print *,'pass'

contains
subroutine nomsg1(aaa)
class(*)::aaa

select type(aaa)
type is(character(*))
if(len(aaa)/=2) print *,'err1'
end select
end subroutine nomsg1

subroutine nomsg2(aaa)
class(*)::aaa
select type(aaa)
type is(character(*))
if(len(aaa)/=5) print *,'err2'
end select
end subroutine nomsg2

subroutine nomsg3(aaa)
class(*)::aaa
select type(aaa)
type is(character(*))
if(len(aaa)/=0) print *,'err3'
end select
end subroutine nomsg3
end

