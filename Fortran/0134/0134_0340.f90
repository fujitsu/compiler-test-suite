 common /x/ n
interface 
 subroutine sub
 end subroutine 
end interface
 procedure(sub),pointer :: p
 type wt
   integer v1
   procedure(sub),nopass,pointer :: pp
 end type
 type(wt)::wv
p=>sub
wv=wt(1,p)
call p
if (n/=1)print *,201,n
call wv%pp
if (n/=2)print *,202,n
if (.not.associated(wv%pp,p))print *,301
wv%pp=>sub
if (.not.associated(wv%pp,p))print *,302
call wv%pp
if (n/=3)print *,203,n
print *,'pass'
end

 subroutine sub
 common /x/ n
 n=n+1
 end subroutine 
 blockdata
 common /x/ n
 data n/0/
 end
