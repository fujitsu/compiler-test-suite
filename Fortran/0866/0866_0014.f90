class(*),allocatable::a(:)
type t
character(10)::ch(10)
end type
type(t)::tt
tt%ch="1234567890"
i=2
a=[tt%ch(:0)(:1)]
a=[tt%ch(1:i+1)(:2)]
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err',len(a)
if(any(a//"a"/="12"//"a")) print *,'err1'
end select
a=[tt%ch(:0)(:1)]

a=[tt%ch(:)(i:)]
select type(a)
type is(character(*))
if(len(a)/=9) print *,'err1',len(a)
if(any(a//"a"/="234567890a")) print *,'err11'
end select

a=[tt%ch(:)(1:1)]
a=[tt%ch(:)(i+1:)]
select type(a)
type is(character(*))
if(len(a)/=8) print *,'err2',len(a)
if(any(a//"a"/="34567890a")) print *,'err02'
end select

a=[tt%ch(:)(1:1)]
a=[tt%ch(:)(len_trim(tt%ch(1)(1:3)):)]
select type(a)
type is(character(*))
if(len(a)/=8) print *,'err3',len(a)
if(any(a//"a"/="34567890a")) print *,'err03'
end select

print *,'pass'
end
