subroutine s1
real,parameter::a1=3.
real,parameter::a2=3.
real,parameter::a3=a1**a2
complex,parameter::c1=(3,2)
complex,parameter::c2=(3,4)
complex,parameter::c3=c1**c2
if (abs(a3-27.00000 )>0.001)print *,101   
if (abs(c3-(3.654754,2.558302))>0.0001)print *,201
end
call s1
print *,'pass'
end

