!Issue#11 (cause may be same as issue#3, it will be confirmed during
!investigation)
!----------
![Phenomena]
!Incorrect output is generated.
!
!Occurrence condition:
!1) Type is defined with an unlimited polymorphic component. and, 
!2) An object of derived type 1) is declared. and, 
!3) 2) component is specified as selector in Select type statement, and,
!4) associate variable name is accessed as substring.
!
!Case:
type :: t1
  class(*),allocatable::a                  !1)
end type t1
type(t1)::obj                              !2)
character(len=4) ::ch
ch='upol'
allocate(obj%a,source=ch)
select type(A=>obj%a)                      !3)
type is(character(*))
  if(len(A(1:2))/=2)print*,"106",len(A(1:2) )  !4)
  if(A(1:2).ne."up")print*,"107",A(1:2)   !4)
end select
print *,'sngg263k : pass'
end
