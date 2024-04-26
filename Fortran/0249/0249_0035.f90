interface
function f(dmy)
character,optional :: dmy(1,2,3)
character f
end function
end interface
character,allocatable :: ii(:)
character :: ij
ij = f(NULL(ii))
print*, ij
end
function f(dmy)
character,optional :: dmy(1,2,3)
character f
if(present(dmy)) then
print*,dmy(1,1,1)
f=dmy(1,1,1)
else
f='A'
print*, "pass"
endif
end function

