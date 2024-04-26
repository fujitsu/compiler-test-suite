call sub()
    contains
subroutine fun(f,m,d)
logical,optional:: f
logical , optional :: m
integer, optional :: d
integer :: nn(1)

integer :: ll(1)
ll = findloc([1,2,3,4,4,3,2,1],4,m,back=f)
if(ANY(ll .ne. 4)) print *,101,ll
nn = minloc([1,2,3,4,4,3,2,1],back=f)
if(ANY(nn .ne. 1)) print *,104
nn = maxloc([1,2,3,4,4,3,2,1],back=m)
if(ANY(nn .ne. 4)) print *,105
end subroutine
subroutine sub(dmy)
    logical , optional :: dmy
call fun()
print *,'Pass'
end subroutine
end

