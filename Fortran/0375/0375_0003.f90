integer,target,allocatable:: a(:)
integer,pointer    :: p(:)
allocate(a(5))
p=>a
a=1
if (a(1)/=1) then
print *,p
deallocate(a)
allocate(a(-2:7))
a=2
print *,p
endif
print *,'pass'
end
