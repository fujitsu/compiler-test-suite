program main
type one
 integer::ch
end type
 
type ,extends(one)::two
 real::num
end type
 
type check
 class(*), pointer::obj
end type
 
type(check)::cas
type(one),pointer::k
cas=check(k)
print*,sizeof(cas),'pass'
end program
