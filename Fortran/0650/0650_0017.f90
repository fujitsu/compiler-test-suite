integer,allocatable:: j(:)
10 format(a)
allocate(j(10))
call sub01()
if (j(2).ne.2) write(6,10) 'error'
call sub02()
print *,'pass'
contains
subroutine sub01()
j=(/1,2,3,4,5,6,7,8,9,10/)
end subroutine 
subroutine sub02()
if (j(10).ne.10) write(6,11) 'error'
11 format(a)
end subroutine
end
