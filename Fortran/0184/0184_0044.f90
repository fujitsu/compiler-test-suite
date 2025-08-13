subroutine s1
integer :: a1(1,1)
data ((a1(k1,k2),k1=1,1),k2=1,1)/1/
integer:: a2(1)= [(( k3*k4 , k3=1,1),k4=1,1)] 
integer:: a3(1)
k1=2; k2=2; k3=2; k4=2; k5=2; k6=2;
a3 = [(( k5*k6 , k5=1,1),k6=1,1)] 
if (a1(1,1)/=1) print *,101
if (a2(1)/=1) print *,102
if (a3(1)/=1) print *,102
call s11
if (k1/=2) print *,801
if (k2/=2) print *,801
if (k3/=2) print *,801
if (k4/=2) print *,801
if (k5/=2) print *,801
if (k6/=2) print *,801
contains
subroutine s11
namelist /nam/k1,k2,k3,k4,k5,k6
write(33,nam)
end subroutine
end
namelist /nam/k1,k2,k3,k4,k5,k6
call s1
rewind 33
read(33,nam)
if (k1/=2) print *,801
if (k2/=2) print *,801
if (k3/=2) print *,801
if (k4/=2) print *,801
if (k5/=2) print *,801
if (k6/=2) print *,801
print *,'pass'
end
