interface 
 subroutine sub
 end subroutine 
end interface
 procedure(sub),pointer :: pp
 type wt
   integer v1
   procedure(sub),nopass,pointer :: pp
 end type
 type(wt)::wv
pp=>null()
if (associated(pp,sub))print *,'error 101'
call       y(sub,pp,0)
wv=wt(1,sub)
if (wv%v1/=1)print *,'error-91'
if (.not.associated(wv%pp,sub))print *,'error 102'
call       y(sub,wv%pp,1)
print *,"pass"
contains
subroutine q(t,p)
interface 
 subroutine t
 end subroutine 
 subroutine p
 end subroutine 
end interface
 type wt
   integer v1
   procedure(sub),pointer,nopass :: pp
 end type
 type(wt)::wv
integer n
common /x/ n
n=4
call t
if (n/=5)print *,'error-5'
call p
if (n/=6)print *,'error-6'
wv=wt(1,t)
if (.not.associated(wv%pp,t))print *,'error 201'
if (wv%v1/=1)print *,'error-92'
call wv%pp
if (n/=7)print *,'error-7'
wv=wt(1,p)
if (.not.associated(wv%pp,p))print *,'error 202'
if (wv%v1/=1)print *,'error-93'
call wv%pp
if (n/=8)print *,'error-8'
wv=wt(1,wv%pp)
if (.not.associated(wv%pp,p))print *,'error 203'
if (wv%v1/=1)print *,'error-94'
call wv%pp
if (n/=9)print *,'error-9'
end subroutine
subroutine z(t,p)
interface 
 subroutine t
 end subroutine 
end interface
procedure(t),pointer :: p
 type wt
   integer v1
   procedure(sub),pointer,nopass :: pp
 end type
 type(wt)::wv
integer n
common /x/ n
n=2
if (associated(p))print *,'error 301'
p=>sub
if (.not.associated(p,t))print *,'error 302'
call t
if (n/=3)print *,'error-3'
call p
if (n/=4)print *,'error-4'
wv=wt(1,t)
if (.not.associated(wv%pp,t))print *,'error 303'
if (.not.associated(wv%pp,sub))print *,'error 304'
if (wv%v1/=1)print *,'error-82'
call wv%pp
if (n/=5)print *,'error-17'
wv=wt(1,p)
if (.not.associated(wv%pp,p))print *,'error 305'
if (.not.associated(wv%pp,sub))print *,'error 306'
if (wv%v1/=1)print *,'error-83'
call wv%pp
if (n/=6)print *,'error-18'
wv=wt(1,wv%pp)
if (wv%v1/=1)print *,'error-84'
call wv%pp
if (n/=7)print *,'error-19'
end subroutine
subroutine y(t,p,k)
interface 
 subroutine t
 end subroutine 
end interface
procedure(t),pointer :: p
 type wt
   integer v1
   procedure(sub),pointer,nopass :: pp
 end type
 type(wt)::wv
integer n
common /x/ n
n=0
if (k==1) then
if (.not.associated(p))print *,'error 401-1'
else
if (associated(p))print *,'error 401-2'
endif
p=>t
if (.not.associated(p,t  ))print *,'error 402'
call t
if (n/=1)print *,'error-1'
call p
if (n/=2)print *,'error-2'
p=>null()
call z(t,p)
call q(t,p)
wv%pp=>p
n=3
call wv%pp
if (n/=4)print *,'error-57'
wv=wt(1,t)
if (.not.associated(wv%pp,t  ))print *,'error 403'
if (wv%v1/=1)print *,'error-72'
call wv%pp
if (n/=5)print *,'error-27'
wv=wt(1,p)
if (.not.associated(wv%pp,p  ))print *,'error 404'
if (wv%v1/=1)print *,'error-73'
call wv%pp
if (n/=6)print *,'error-28'
wv=wt(1,wv%pp)
if (wv%v1/=1)print *,'error-74'
call wv%pp
if (n/=7)print *,'error-29'
end subroutine
end

 subroutine sub
 common /x/ n
 n=n+1
 end subroutine 
 blockdata
 common /x/ n
 data n/0/
 end
