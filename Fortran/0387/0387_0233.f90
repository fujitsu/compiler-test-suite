interface
 subroutine proc(x)
  character(len=2):: x
 end subroutine
end interface

logical :: l1
character(len=2)::cc
procedure(proc), pointer :: p
p => null()
l1=associated(p)
if (l1.neqv..false.) print *,'fail'
p => proc
l1=associated(p)
if (l1.neqv..true.) print *,'fail'
p => proc
call p(cc)
l1=associated(p)
if (l1.neqv..true.) print *,'fail'
if (cc.ne.'aa') print *,'fail'
print *,'pass'
end

subroutine proc(x)
 character(len=2):: x
 x='aa'
end subroutine
