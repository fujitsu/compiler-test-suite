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
k=0
select type(A=>obj%a)                      !3)
type is(character(*))
  if(len(A)/=4)print*,"106",len(A )  !4)
  if(A.ne."upol")print*,"107",A   !4)
   k=1
end select
if (k/=1)print *,1001
print *,'sngg584k : pass'
end
