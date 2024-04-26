call sub()
    contains
subroutine fun(aa,f,m)
logical,optional:: f
logical , optional :: m

integer ::aa(8)
integer :: ll(1)
ll = findloc(aa,4,m,back=f)
if(ANY(ll .ne. 4)) print *,102,ll
end subroutine
subroutine sub(dmy)
    logical , optional :: dmy
    integer :: arr(8)=[1,2,3,4,4,3,2,1]
call fun(arr)
print *,'Pass'
end subroutine
end

