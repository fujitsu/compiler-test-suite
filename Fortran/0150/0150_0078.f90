subroutine s1
integer,dimension(*,-11:*),parameter::a=reshape([1,2,3,4,5,6],[2,3])
write(1,*)a
write(1,*)lbound(a),ubound(a),size(a)
rewind 1
read(1,*) k1,k2,k3,k4,k5,k6
if (k1/=1 .or. k2/=2 .or. k3/=3) print *,102
if (k4/=4 .or. k5/=5 .or. k6/=6) print *,1021
read(1,*) k1,k2,k3,k4,k5
if (k1/=1 .or. k2/=-11 .or. k3/=2) print *,10222
if (k4/=-9 .or. k5/=6 ) print *,10211
end
call s1
print *,'pass'
end
