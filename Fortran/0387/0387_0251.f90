interface
 function func(i,j,k)
  integer,pointer :: i
  integer :: j
  integer,pointer :: k
  integer :: func
 end function
 subroutine sub(i,j,k)
  integer,pointer :: i
  integer :: j
  integer,pointer :: k
 end subroutine
end interface

procedure(func),pointer :: pfp
procedure(sub) ,pointer :: psp
integer i


pfp=>func
psp=>sub

i=func(i=null(),j=1,k=null())
call sub(i=null(),j=1,k=null())

i=pfp(i=null(),j=1,k=null())
i=pfp(k=null(),j=1,i=null())
i=pfp(k=null(),i=null(),j=1)
i=pfp(null(),j=1,k=null())
i=pfp(null(),1,k=null())

call psp(i=null(),j=1,k=null())
call psp(k=null(),j=1,i=null())
call psp(k=null(),i=null(),j=1)
call psp(null(),j=1,k=null())
call psp(null(),1,k=null())

if (i.ne.1) print *,'fail'

print *,'pass'

end

function func(i,j,k)
 integer,pointer :: i
 integer :: j
 integer,pointer :: k
 integer :: func
 func=1
end function
subroutine sub(i,j,k)
 integer,pointer :: i
 integer :: j
 integer,pointer :: k
end subroutine
