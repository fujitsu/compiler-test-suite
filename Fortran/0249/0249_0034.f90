integer,pointer :: ii(:)
integer k
k= f(NULL(ii))
print*,k
contains
function f(dmy)
integer,optional :: dmy(1,2)
integer f
f=1
if(present(dmy)) then
print*,102
f=dmy(1,1)
else
print*,'pass'
endif
end function
end



