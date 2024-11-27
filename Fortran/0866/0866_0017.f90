class(*),allocatable::a(:)
character(3)::ch1,ch2,ch3
ch1="123"
ch2="abc"
ch3="xyz"
a=[ch1(:1),ch2(:1),ch3(:1)]
select type(a)
type is(character(*))
if(len(a)/=1) print *,'err1'
if(a(1)//"1"/="11") print *,'err2',a(1)//"1"
if(a(2)//"1"/="a1") print *,'err3',a(2)//"1"
if(a(3)//"1"/="x1") print *,'err4',a(3)//"1"
end select

a=[ch1(2:),ch2(2:),ch3(2:)]
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err5'
if(a(1)//"1"/="231") print *,'err6',a(1)//"1"
if(a(2)//"1"/="bc1") print *,'err7',a(2)//"1"
if(a(3)//"1"/="yz1") print *,'err8',a(3)//"1"
end select
print *,'pass'
end
