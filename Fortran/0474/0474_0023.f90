type x
   integer,pointer    ::x1
end type
type(x),pointer::p
allocate(p)
allocate(p%x1)
p%x1=1
print *,'pass'
end

