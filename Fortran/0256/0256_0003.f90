call fun(c='1')
print *,'Pass'
contains
subroutine fun(c,f)
logical,optional:: f
character(*)::c
integer :: ll(1)
ll = findloc([1,2,3,4,4,3,2,1],4,back=f)
if(ANY(ll .ne. 4)) print *,102,ll
end subroutine
end

