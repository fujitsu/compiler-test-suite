interface
subroutine sub (x)
real :: x(:,:,:)
end subroutine
subroutine ent (x)
real :: x(:,:,:)
end subroutine
end interface
real :: x(2,3,4)
x = 1
call sub(x)
call ent(x)
if (any(x.ne.3)) stop 
print *,'PASS'
end
