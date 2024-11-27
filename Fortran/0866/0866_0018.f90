class(*),allocatable::a(:)
type t
character(3)::ch1,ch2,ch3
end type
type(t)::tt
tt%ch1="123"
tt%ch2="abc"
tt%ch3="xyz"
a=[(tt%ch1(:1),i=1,1),tt%ch3(:1)]
select type(a)
type is(character(*))
if(len(a)/=1) print *,'err1'
if(a(1)//"1"/="11") print *,'err2',a(1)//"1"
if(a(2)//"1"/="x1") print *,'err4',a(3)//"1"
end select

a=[(tt%ch1(:1),i=1,1),(tt%ch2(:1),k=1,1),tt%ch3(:1)]
select type(a)
type is(character(*))
if(len(a)/=1) print *,'err1'
if(a(1)//"1"/="11") print *,'err2',a(1)//"1"
if(a(2)//"1"/="a1") print *,'err3',a(2)//"1"
if(a(3)//"1"/="x1") print *,'err4',a(3)//"1"
end select

a=[(tt%ch1(2:),i=1,1),(tt%ch2(2:),k=1,1),tt%ch3(2:)]
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err5'
if(a(1)//"1"/="231") print *,'err6',a(1)//"1"
if(a(2)//"1"/="bc1") print *,'err7',a(2)//"1"
if(a(3)//"1"/="yz1") print *,'err8',a(3)//"1"
end select
print *,'pass'
end
