module m1
integer(8),parameter:: max=x'7fff ffff ffff ffff'
integer(8)::save
contains
subroutine s1(n)
integer,allocatable::p(:,:,:)
select case (n)
case (0) 
case (1)
 allocate(p(2,3,4),source=1)
end select
save=loc(p)
if (n==2) then
  call z(n=n)
else
  call z(p,n)
endif
if( n==1) then 
  deallocate(p)
endif
end subroutine
subroutine z(p,n)
integer,optional::p(:,:,:)
intent(out)::p
if (n==1) then
  if (.not.present(p)) print *,101
else
  if (present(p)) print *,102
endif
call stack(max,max,max,max,max,max,max,max,max,max,max,&
           max,max,max,max,max,max,max,max,max,max,max,&
           max,max,max,max,max,max,max,max,max,max,max) 
call ss(p,n)
if( n==1) then 
  if (any(p/=2)) print *,20001
  p=1
endif
call stack(max,max,max,max,max,max,max,max,max,max,max,&
           max,max,max,max,max,max,max,max,max,max,max,&
           max,max,max,max,max,max,max,max,max,max,max) 
call st(p,n)
if( n==1) then 
  if (any(p/=2)) print *,20002
  p=1
endif
call stack(max,max,max,max,max,max,max,max,max,max,max,&
           max,max,max,max,max,max,max,max,max,max,max,&
           max,max,max,max,max,max,max,max,max,max,max) 
call=fs(p,n)
if (call/=0) print *,9
if( n==1) then 
  if (any(p/=2)) print *,20001
  p=1
endif
call stack(max,max,max,max,max,max,max,max,max,max,max,&
           max,max,max,max,max,max,max,max,max,max,max,&
           max,max,max,max,max,max,max,max,max,max,max) 
call=ft(p,n)
if( n==1) then 
  if (any(p/=2)) print *,20002
  p=1
endif
end subroutine
subroutine ss(x,n) 
integer,optional:: x(2*3*4)
intent(out)::x
if (n==1) then
  if (save/=loc(x)) print *,103
  if (.not.present(x)) print *,101
  x=2
else
  if (present(x)) print *,102,n
endif
end subroutine
subroutine st(x,n) 
integer,optional:: x(:,:,:)
intent(out)::x
if (n==1) then
  if (save/=loc(x)) print *,203
  if (.not.present(x)) print *,201
  x=2
else
  if (present(x)) print *,202
endif
end subroutine
function   fs(x,n) 
integer,optional:: x(2*3*4)
intent(out)::x
if (n==1) then
  if (save/=loc(x)) print *,303
  if (.not.present(x)) print *,301
  x=2
else
  if (present(x)) print *,302
endif
fs=0
end function  
function   ft(x,n) 
integer,optional:: x(:,:,:)
intent(out)::x
ft=0
if (n==1) then
  if (save/=loc(x)) print *,403
  if (.not.present(x)) print *,401
  x=2
else
  if (present(x)) print *,402
endif
end function   
subroutine stack(k01,k02,k03,k04,k05,k06,k07,k08,k09,k10,&
                 k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,&
                 k21,k22,k23,k24,k25,k26,k27,k28,k29,k30,&
                 k31,k32,k33) 
implicit integer(8)(k)
value            k01,k02,k03,k04,k05,k06,k07,k08,k09,k10,&
                 k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,&
                 k21,k22,k23,k24,k25,k26,k27,k28,k29,k30,&
                 k31,k32,k33
if (k01/=max) print *,1
if (k02/=max) print *,1
if (k03/=max) print *,1
if (k04/=max) print *,1
if (k05/=max) print *,1
if (k06/=max) print *,1
if (k07/=max) print *,1
if (k08/=max) print *,1
if (k09/=max) print *,1
if (k10/=max) print *,1
if (k11/=max) print *,1
if (k12/=max) print *,1
if (k13/=max) print *,1
if (k14/=max) print *,1
if (k15/=max) print *,1
if (k16/=max) print *,1
if (k17/=max) print *,1
if (k18/=max) print *,1
if (k19/=max) print *,1
if (k20/=max) print *,1
if (k21/=max) print *,1
if (k22/=max) print *,1
if (k23/=max) print *,1
if (k24/=max) print *,1
if (k25/=max) print *,1
if (k26/=max) print *,1
if (k27/=max) print *,1
if (k28/=max) print *,1
if (k29/=max) print *,1
if (k30/=max) print *,1
if (k31/=max) print *,1
if (k32/=max) print *,1
if (k33/=max) print *,1
end subroutine
end

use m1
do k1=1,10
do k2=0,2
call s1(k2)
end do
end do
10 continue
print *,'pass'
end
