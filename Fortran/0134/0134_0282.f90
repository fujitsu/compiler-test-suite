subroutine s1
implicit character(p),complex(x)
 common /x/ n
interface 
 subroutine sub
 end subroutine 
end interface
 procedure(sub),pointer :: p
 procedure(sub),pointer :: x
 type wt
   integer v1
   procedure(sub),nopass,pointer :: x
 end type
p=>sub
call p
if (n/=1)print *,201,n
x=>sub
call x
if (n/=2)print *,202,n
if (.not.associated(p,x))print *,301
if (.not.associated(x,p))print *,302

print *,'pass'
end
call s1
end

 subroutine sub
 common /x/ n
 n=n+1
 end subroutine 
 blockdata
 common /x/ n
 data n/0/
 end
