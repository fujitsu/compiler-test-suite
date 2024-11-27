class(*),allocatable::a(:)
character(5)::ch(3)
ch="12345"
iii=2
a=[ch(:)(iii:iii+1)]
a=[ch(:)(2:)]
select type(a)
type is(character(*))
if(len(a)/=4) print *,'err3',len(a)
if(any(a//"a"/="2345a")) print *,'err4'
end select

a=[ch(:)(:3)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err3',len(a)
if(any(a//"a"/="123a")) print *,'err4'
end select

a=[ch(:)(3:5)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err3',len(a)
if(any(a//"a"/="345a")) print *,'err4',a//"a"
end select
a=[ch(:)(1:0)]
select type(a)
type is(character(*))
if(len(a)/=0) print *,'err1'
if(any(a//"a"/="a")) print *,'err2'
end select

a=[ch(:)(:0)]
select type(a)
type is(character(*))
if(len(a)/=0) print *,'err1'
if(any(a//"a"/="a")) print *,'err2'
end select

print *,'pass'
end
