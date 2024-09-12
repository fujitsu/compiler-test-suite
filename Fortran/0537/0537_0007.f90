character(3)::ch
ch="234"
call s(ch)
print *,'pass'
end
subroutine s(ch)
class(*),allocatable::a(:)
character(*)::ch
a=[(ch(1:),i=1,1)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err1'
if(a(1)//"a"/="234a") print *,'err2'
end select
a=[(ch(:3),i=1,1)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err11'
if(a(1)//"a"/="234a") print *,'err22'
end select
end
