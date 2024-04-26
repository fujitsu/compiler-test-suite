call sub()
    contains
subroutine fun(aa,f,m)
logical:: f
logical , optional :: m

integer ::aa(8)
integer :: ll(1)
ll = findloc(aa,4,m,back=f)
if(ANY(ll .ne. 5)) print *,102,ll
end subroutine
subroutine sub(dmy)
    logical , optional :: dmy
logical :: bk=.true.
    integer :: arr(8)=[1,2,3,4,4,3,2,1]
call fun(arr,bk)
print *,'Pass'
end subroutine
end

