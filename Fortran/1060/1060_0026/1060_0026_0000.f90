interface
subroutine sub (x)
real,optional,pointer :: x(:,:,:)
end subroutine
subroutine ent (x)
real,optional,pointer :: x(:,:,:)
end subroutine
end interface
real,target :: x(2,3,4)
real,pointer :: p(:,:,:)
x = 1
p=>x
call sub(p)
call ent(p)
call sub()
call ent()
if (any(x.ne.3)) stop 
print *,'PASS'
end
