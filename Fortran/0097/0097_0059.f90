subroutine s1()
character(3) ::t1(5)=['111','222','333','444','555']
character(3) ::t4(5)=['111','222','333','444','555']
character(3) ::t2(5)=['111','222','333','444','555']
character(3) ::t3(5)=['111','222','333','444','555']
character(3) ::t5(5)=['111','222','333','444','555']
character(3) ::t6(5)=['111','222','333','444','555']
integer::k=2
call ss(t1(:)(1:1))
if(any(t1.ne.['a11','a22','a33','a44','a55']))print*,"201",t1
call ss2(t2(:)(1:3))
if(any(t2.ne.['aaa','aaa','aaa','aaa','aaa']))print*,"202",t2
call ss3(t3(1:5:1)(:2))
if(any(t3.ne.['aa1','aa2','aa3','aa4','aa5']))print*,"203",t3
call ss4(t4(:)(1:k))
if(any(t4.ne.['aa1','aa2','aa3','aa4','aa5']))print*,"203",t4
call ss5(t5(:)(k-1:k+1))
if(any(t5.ne.['aaa','aaa','aaa','aaa','aaa']))print*,"204",t5
call ss6(t6(1:5:k)(1:k))
if(any(t6.ne.['aa1','222','aa3','444','aa5']))print*,"204",t5
contains
subroutine ss(a)
character(*),contiguous::a(:)
if(len(a).ne.1)print*,"101"
if (loc(t1).eq.loc(a)) print *,201,loc(t),loc(b)
a = 'a'
end subroutine
subroutine ss2(b)
character(*),contiguous::b(:)
if(len(b).ne.3)print*,"102"
if (loc(t2)/=loc(b)) print *,202,loc(t2),loc(b)
b ='aaa'
end subroutine
subroutine ss3(b)
character(*),contiguous::b(:)
if(len(b).ne.2)print*,"102"
if (loc(t3).eq.loc(b)) print *,203,loc(t3),loc(b)
b ='aa'
end subroutine
subroutine ss4(b)
character(*),contiguous::b(:)
if(len(b).ne.2)print*,"103"
if (loc(t4).eq.loc(b)) print *,204,loc(t4),loc(b)
b ='aa'
end subroutine
subroutine ss5(b)
character(*),contiguous::b(:)
if(len(b).ne.3)print*,"103"
if (loc(t5).ne.loc(b)) print *,205,loc(t5),loc(b)
b ='aaa'
end subroutine
subroutine ss6(b)
character(*),contiguous::b(:)
if(len(b).ne.2)print*,"103"
if (loc(t6).eq.loc(b)) print *,205,loc(t6),loc(b)
b ='aa'
end subroutine
end subroutine
call s1()
print *,'pass'
end

