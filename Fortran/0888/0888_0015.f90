interface
function f(dmy)
character,optional :: dmy(1,2,3)
character f
end function
end interface
character,allocatable :: ii(:)
print*, f(NULL(ii))
end
function f(dmy)
character,optional :: dmy(1,2,3)
character f
f=dmy(1,1,1)
end function



