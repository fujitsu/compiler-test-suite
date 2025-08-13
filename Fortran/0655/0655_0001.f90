print *,'pass'
end

subroutine test0a()
call xxx()
end 

subroutine xxx()
type ty1  ; integer ::a =1 ; end type  ;
type ty2
 type(ty1),allocatable,dimension(:) :: al
end type
type(ty2) :: str
allocate(str%al(10))
str%al=ty1(1)
write(12,*) str%al
str%al=str%al
end
