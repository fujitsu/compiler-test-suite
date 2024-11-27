integer,pointer :: ii(:)
print*, f(NULL(ii))
contains
function f(dmy)
integer,optional :: dmy(1,2)
integer f
f=dmy(1,1)
end function
end



