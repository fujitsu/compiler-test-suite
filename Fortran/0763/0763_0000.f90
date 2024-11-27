module m1
integer(8)::save
contains
subroutine s1(n)
integer,allocatable::p(:,:,:)
save=loc(p)
print *,101
  call z(p,n)
if( n==1) then 
  deallocate(p)
endif
end subroutine
subroutine z(p,n)
integer::p(:,:,:)
print *,102
if (n==1) then
else
endif
print *,3021
call ss(p,n)
if( n==1) then 
  if (any(p/=2)) print *,20001
  p=1
endif
call st(p,n)
if( n==1) then 
  if (any(p/=2)) print *,20002
  p=1
endif
call=fs(p,n)
if (call/=0) print *,9
if( n==1) then 
  if (any(p/=2)) print *,20003
  p=1
endif
call=ft(p,n)
if (call/=0) print *,9
if( n==1) then 
  if (any(p/=2)) print *,20004
  p=1
endif
end subroutine
subroutine ss(x,n) 
integer,optional:: x(2*3*4)
print *,302
if (n==1) then
  if (save/=loc(x)) print *,103
  if (.not.present(x)) print *,101
  x=2
else
endif
end subroutine
subroutine st(x,n) 
integer,optional:: x(:,:,:)
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
if (n==1) then
  if (save/=loc(x)) print *,303
  if (.not.present(x)) print *,301
  x=2
else
endif
fs=0
end function  
function   ft(x,n) 
integer,optional:: x(:,:,:)
ft=0
if (n==1) then
  if (save/=loc(x)) print *,403
  if (.not.present(x)) print *,401
  x=2
else
  if (present(x)) print *,402
endif
end function   
end

use m1
k2=0
call s1(k2)
10 continue
print *,'pass'
end
