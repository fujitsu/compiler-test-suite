type :: t1
  class(*),allocatable::a                  !1)
end type t1
type(t1)::obj                              !2)
character(len=4) ::ch
ch='upol'
kk=1
allocate(obj%a,source=ch)
kk=2
select type(A=>obj%a)                      !3)
type is(character(*))
  if(len(A(1:kk))/=2)print*,"106",len(A(1:2) )  !4)
  if(A(kk-1:kk).ne."up")print*,"107",A(1:2)   !4)
end select
print *,'sngg589k : pass'
end
