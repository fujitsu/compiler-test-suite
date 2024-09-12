call s1
call s2
print *,'pass'
contains
subroutine s1
integer,allocatable::iii
allocate(iii)
iii=1
associate(p1=>iii)
p1=0
associate(p2=>p1)
p2=1
end associate
end associate
end subroutine s1
subroutine s2
integer,allocatable::iii(:)
allocate(iii(1))
iii=[1]
associate(p1=>iii)
p1=[0]
associate(p2=>p1)
p2=[1]
end associate
end associate
end subroutine s2
end
