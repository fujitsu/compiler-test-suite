integer,allocatable :: iii(:)
integer,allocatable :: jjj(:)
allocate(iii(10))
iii = 10
call move_alloc(to=jjj,from=iii)
print *,'pass'

end
