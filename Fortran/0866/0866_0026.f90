call s1
call s2
call s3
call s4
call s5
call s6
print *,"pass"
contains
subroutine s1
class(*),allocatable::a(:)
character(3)::ch1
ch1="abc"
a=[(ch1(2:),i=1,1)]
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err1'
if(a(1)//"1"/="bc1") print *,'err2',a(1)//"1"
end select
end subroutine s1
subroutine s2
class(*),allocatable::a(:)
character(3)::ch1,ch2
ch1="123"
ch2="abc"
a=[((ch1(2:),i=1,1),ch2(2:),k=1,1)]
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err3',len(a)
if(a(1)//"1"/="231") print *,'err4',a(1)//"1"
if(a(2)//"1"/="bc1") print *,'err4',a(2)//"1"
end select
end subroutine s2
subroutine s3
class(*),allocatable::a(:)
character(3)::ch1,ch2
ch1="123"
ch2="abc"
a=[(((ch1(2:),i=1,1),ch2(2:),k=1,1),ch2(1:2),j=1,1)]
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err5'
if(a(1)//"1"/="231") print *,'err61',a(1)//"1"
if(a(2)//"1"/="bc1") print *,'err62',a(2)//"1"
if(a(3)//"1"/="ab1") print *,'err63',a(3)//"1"
end select
end subroutine s3
subroutine s4
class(*),allocatable::a(:)
character(3)::ch1,ch2
ch1="123"
ch2="abc"
a=[(((ch1(2:),i=1,1),ch2(2:),k=1,1),ch2(1:2),j=1,1),"xz"]
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err7'
if(a(1)//"1"/="231") print *,'err81',a(1)//"1"
if(a(2)//"1"/="bc1") print *,'err82',a(2)//"1"
if(a(3)//"1"/="ab1") print *,'err83',a(3)//"1"
if(a(4)//"1"/="xz1") print *,'err84',a(4)//"1"
end select
end subroutine s4
subroutine s5
class(*),allocatable::a(:)
character(3)::ch1,ch2
character(2)::ch3
ch1="123"
ch2="abc"
ch3="gg"
a=[ch3,(((ch1(2:),i=1,1),ch2(2:),k=1,1),ch2(1:2),j=1,1),"xz"]
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err9'
if(a(1)//"1"/="gg1") print *,'err101',a(1)//"1"
if(a(2)//"1"/="231") print *,'err102',a(2)//"1"
if(a(3)//"1"/="bc1") print *,'err103',a(3)//"1"
if(a(4)//"1"/="ab1") print *,'err104',a(4)//"1"
if(a(5)//"1"/="xz1") print *,'err105',a(5)//"1"
end select
end subroutine s5
subroutine s6
class(*),allocatable::a(:)
character(3)::ch1
ch1="123"
a=[((ch1(2:),i=1,1),ch1(1:2),k=1,1),"cc"]
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err11'
if(a(1)//"1"/="231") print *,'err12',a(1)//"1"
if(a(2)//"1"/="121") print *,'err12',a(2)//"1"
if(a(3)//"1"/="cc1") print *,'err12',a(3)//"1"
end select
end subroutine s6
end
