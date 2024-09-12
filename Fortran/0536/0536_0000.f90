class(*),allocatable:: a1,a2,a3,a4,a5,a6,a7,a8,a9
character(5)::ch
ch='abcde'
a1='abcde'(:2)
a2='abcde'(4:)
a3='abcde'(:)
a4=''(1:0)
a5='abcde'(:2*1)
a6=ch(:)
a7=ch(1:5)
a8='abcde'
a9=ch
call nomsg1(a1)
call nomsg1(a2)
call nomsg2(a3)
call nomsg3(a4)
call nomsg1(a5)
call nomsg2(a6)
call nomsg2(a7)
call nomsg2(a8)
call nomsg2(a9)
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

