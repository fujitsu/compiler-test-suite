class(*),allocatable::a(:)
character(3)::ch1,ch2,ch3
integer(1)::ii
integer(8)::jj
ii=1
jj=3
ch1="123"
ch2="abc"
ch3="xyz"
a=[(ch1(:),i=1,1),(ch2(:),k=1,1),ch3(:)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err1'
if(a(1)//"1"/="1231") print *,'err2',a(1)//"1"
if(a(2)//"1"/="abc1") print *,'err3',a(2)//"1"
if(a(3)//"1"/="xyz1") print *,'err4',a(3)//"1"
end select
a=[(ch1(1:),i=1,1),(ch2(1:),k=1,1),ch3(1:)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err5'
if(a(1)//"1"/="1231") print *,'err6',a(1)//"1"
if(a(2)//"1"/="abc1") print *,'err7',a(2)//"1"
if(a(3)//"1"/="xyz1") print *,'err8',a(3)//"1"
end select
a=[(ch1(:3),i=1,1),(ch2(:3),k=1,1),ch3(:3)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err5'
if(a(1)//"1"/="1231") print *,'err6',a(1)//"1"
if(a(2)//"1"/="abc1") print *,'err7',a(2)//"1"
if(a(3)//"1"/="xyz1") print *,'err8',a(3)//"1"
end select
a=[(ch1(ii:),i=1,1),(ch2(ii:),k=1,1),ch3(ii:)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err5'
if(a(1)//"1"/="1231") print *,'err6',a(1)//"1"
if(a(2)//"1"/="abc1") print *,'err7',a(2)//"1"
if(a(3)//"1"/="xyz1") print *,'err8',a(3)//"1"
end select
a=[(ch1(:jj),i=1,1),(ch2(:jj),k=1,1),ch3(:jj)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err5'
if(a(1)//"1"/="1231") print *,'err6',a(1)//"1"
if(a(2)//"1"/="abc1") print *,'err7',a(2)//"1"
if(a(3)//"1"/="xyz1") print *,'err8',a(3)//"1"
end select
a=[(ch1(ii:jj),i=1,1),(ch2(ii:jj),k=1,1),ch3(ii:jj)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err5'
if(a(1)//"1"/="1231") print *,'err6',a(1)//"1"
if(a(2)//"1"/="abc1") print *,'err7',a(2)//"1"
if(a(3)//"1"/="xyz1") print *,'err8',a(3)//"1"
end select

print *,'pass'
end
