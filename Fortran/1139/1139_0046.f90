type :: t1
  class(*),allocatable::a                  !1)
end type t1
type(t1)::obj                              !2)
character(len=4) ::ch
ch='upol'
allocate(obj%a,source=ch)
k=0
select type(A=>obj%a)                      !3)
type is(character(*))
  if(len(A(1:4))/=4)print*,"106",len(A )  !4)
  if(A(1:4).ne."upol")print*,"107",A   !4)
   k=1
end select
if (k/=1)print *,1001
print *,'sngg585k : pass'
end
