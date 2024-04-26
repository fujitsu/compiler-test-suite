subroutine sx
implicit integer(2)(k)
pointer k1,k2,k3,k4
allocate(k1,k2,k3,k4)
k1=1
k2=2
k3=3
k4=4
call       s(k1,k2,k3,k4)
contains
subroutine s(k1,k2,k3,k4)
implicit integer(2)(k)
pointer k1,k2,k3,k4
i=1
i=2
end subroutine
end
call sx
print *,'pass'
end
