character(5)::ch(3)
ch="12345"
call s1(ch)
print *,'pass'
contains
subroutine s1(ch)
class(*),allocatable::a(:)
character(*)::ch(:)
integer(8)::i0,i1,i2,i3,i5
i0=0
i1=1
i2=2
i3=3
i5=5
a=[ch(:)(i1:i0)]
select type(a)
type is(character(*))
if(len(a)/=0) print *,'err1'
if(any(a//"a"/="a")) print *,'err2'
end select
a=[ch(:)(:i0)]
select type(a)
type is(character(*))
if(len(a)/=0) print *,'err1'
if(any(a//"a"/="a")) print *,'err2'
end select
a=[ch(:)(i2:)]
select type(a)
type is(character(*))
if(len(a)/=4) print *,'err3',len(a)
if(any(a//"a"/="2345a")) print *,'err4'
end select

a=[ch(:)(:i3)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err3',len(a)
if(any(a//"a"/="123a")) print *,'err4'
end select

a=[ch(:)(i3:i5)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err3',len(a)
if(any(a//"a"/="345a")) print *,'err4',a//"a"
end select
end subroutine s1
end
