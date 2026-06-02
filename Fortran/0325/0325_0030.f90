!$OMP THREADPRIVATE(a1)
common /comm/ a2
call sub()
print *,'pass'
end

subroutine sub()
save a1
!$OMP THREADPRIVATE(a1)
common /comm/ a2
end subroutine

module mod
!$OMP THREADPRIVATE(a1)
common /comm/ a2
end

module mod1
contains
subroutine sub()
save a1
!$OMP THREADPRIVATE(a1)
common /comm/ a2
end subroutine
end

module mod2
!$OMP THREADPRIVATE(a1)
contains
subroutine sub()
common /comm/ a2
end subroutine
end

