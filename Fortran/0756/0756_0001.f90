integer,pointer::c(:)
integer,target::d(2,2,2)

c(0:1)=>d(::1,::1,::1)
c(0:1)=>d
end
