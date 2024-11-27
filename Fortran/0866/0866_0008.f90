call s1
print *,'pass'
end
subroutine s1
class(*),allocatable::a(:)
character(3)::ch(2,3)
ch="123"
i=2
a=[ch(:,:)(:1)]
select type(a)
type is(character(*))
if(len(a)/=1) print *,'err',len(a)
if(any(a//"a"/="1a")) print *,'err1'
end select

a=[ch(:,:)(:2)]
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err1',len(a)
if(any(a//"a"/="12a")) print *,'err11'
end select

a=[ch(:,:)(:3)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err2',len(a)
if(any(a//"a"/="123a")) print *,'err22'
end select


a=[ch(:,:)(i:)]
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err3',len(a)
if(any(a//"a"/="23a")) print *,'err33'
end select

a=[ch(:,:)(i-1:)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err4',len(a)
if(any(a//"a"/="123a")) print *,'err44'
end select

a=[ch(:,:)(:i+1)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err5',len(a)
if(any(a//"a"/="123a")) print *,'err55'
end select


a=[ch(:,:)(i:3)]
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err6',len(a)
if(any(a//"a"/="23a")) print *,'err66'
end select

a=[ch(:,:)(i:i-2)]
select type(a)
type is(character(*))
if(len(a)/=0) print *,'err7',len(a)
if(any(a//"a"/="a")) print *,'err77'
end select

a=[ch(:,:)(i+1:)]
select type(a)
type is(character(*))
if(len(a)/=1) print *,'err8',len(a)
if(any(a//"a"/="3a")) print *,'err88'
end select
end
