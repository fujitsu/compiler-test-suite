integer :: ii
ii=fun(c='1')
if(ii /= 0) print *,201
print *,'Pass'
contains
function fun(c,f)
logical,optional:: f
character(*)::c
integer :: ll(1),nn
integer :: fun
nn = index('12344321',c,back=f)
ll = minloc([1,2,3,4,4,3,2,1],back=f)
if(nn .ne. 1) print *,101
if(ANY(ll .ne. 1)) print *,102,ll
fun=0
end function
end

