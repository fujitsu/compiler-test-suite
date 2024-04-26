subroutine s(k1,k2,k3,k4)
pointer k1,k2,k3,k4
i=1
i=2
end subroutine
call sx
print *,'pass'
end
subroutine sx
pointer k1,k2,k3,k4
interface
subroutine s(k1,k2,k3,k4)
pointer k1,k2,k3,k4
end subroutine
end interface
allocate(k1,k2,k3,k4)
k1=1
k2=2
k3=3
k4=4
call       s(k1,k2,k3,k4)
end
