type ttt
character(5):: name(3)
end type
class(*),allocatable::sss(:)
character(5)::ch(3)
ch="abcde"

sss=[ttt(name=[("abcde",i=1,3)])]
select type(sss)
type is(character(*))
if(len(sss)/=5) print *,'err'
if(any(sss//"1"/="abcde1")) print *,'err' 
end select

sss=[ttt(name=[("abcde(2:)",i=1,3)])]
select type(sss)
type is(character(*))
if(len(sss)/=4) print *,'err'
if(any(sss//"1"/="bcde1")) print *,'err' 
end select

sss=[ttt(name=ch(:)(:1))]
select type(sss)
type is(character(*))
if(len(sss)/=1) print *,'err'
if(any(sss//"1"/="a1")) print *,'err' 
end select


sss=[ttt(name=ch(:)(2:))]
select type(sss)
type is(character(*))
if(len(sss)/=4) print *,'err'
if(any(sss//"1"/="bcde1")) print *,'err' 
end select

print *,'pass'
end
