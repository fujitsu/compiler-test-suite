type tt
 integer :: i
end type

type(tt) :: obj
obj%i= 3
block
 type(tt) :: obj
 block
  type(tt) :: obj
  obj%i=7
  if(obj%i/=7) print*,101,'inner block'
  print*,obj%i
 end block

 obj%i = 2
 if(obj%i/=2) print*,102,'outer block'
print*,obj%i
end block

if(obj%i/=3) print*,103,'main'
print*,obj%i,'pass'
End

