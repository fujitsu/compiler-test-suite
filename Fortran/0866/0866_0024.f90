type ttt
character(5):: name
end type
class(*),allocatable::sss(:)
character(5)::ch
ch="abcde"

sss=[ttt(name="abcde"(:1))]
select type(sss)
type is(character(*))
if(len(sss)/=1) print *,'err'
if(sss(1)//"1"/="a1") print *,'err'
end select

sss=[ttt(name="abcde(2:)")]
select type(sss)
type is(character(*))
if(len(sss)/=4) print *,'err'
if(sss(1)//"1"/="bcde1") print *,'err'
end select

sss=[ttt(name=ch(2:))]
select type(sss)
type is(character(*))
if(len(sss)/=4) print *,'err'
if(sss(1)//"1"/="bcde1") print *,'err'
end select

print *,'pass'
end
