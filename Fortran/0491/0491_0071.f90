real,parameter:: b(*)= [real:: 1 ]
     real ,parameter:: c(*)= [     real :: 1 ]
type(real):: a
allocatable::a
allocate(real:: a)
write(1,*) [     real :: 1 ]
write(1,*) [real:: 1 ]
write(1,*) b,c
print *,'pass'
contains
type(real) function f()
f=1
end
end
