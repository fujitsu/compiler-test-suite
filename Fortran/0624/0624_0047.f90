 program main
integer*8,parameter::f=1212345_8

integer*8,parameter::d=max(f,4512343)
if (d/=4512343) print *,101,d
print *,'pass'
END
