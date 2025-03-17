subroutine s054
implicit complex(4)(i-n)
i=(1,1);j=(2,2)
!$omp atomic
i=i+j
if (abs(i-(3,3))>0.001)print *,'error-20'
!$omp atomic
i=i*j
if (abs(i-(0,12))>0.001)print *,'error-21'
i=(1,1);j=(2,2)
!$omp atomic
i=i-j
if (abs(i-(-1,-1))>0.001)print *,'error-22'
!$omp atomic
i=i/j
if (abs(i-(-0.5,0))>0.001)print *,'error-23'
end
subroutine s058
implicit complex(8)(i-n)
i=(1,1);j=(2,2)
!$omp atomic
i=i+j
if (abs(i-(3,3))>0.001)print *,'error-20'
!$omp atomic
i=i*j
if (abs(i-(0,12))>0.001)print *,'error-21'
i=(1,1);j=(2,2)
!$omp atomic
i=i-j
if (abs(i-(-1,-1))>0.001)print *,'error-22'
!$omp atomic
i=i/j
if (abs(i-(-0.5,0))>0.001)print *,'error-23'
end
subroutine s05x
implicit complex(16)(i-n)
i=(1,1);j=(2,2)
!$omp atomic
i=i+j
if (abs(i-(3,3))>0.001)print *,'error-20'
!$omp atomic
i=i*j
if (abs(i-(0,12))>0.001)print *,'error-21'
i=(1,1);j=(2,2)
!$omp atomic
i=i-j
if (abs(i-(-1,-1))>0.001)print *,'error-22'
!$omp atomic
i=i/j
if (abs(i-(-0.5,0))>0.001)print *,'error-23'
end
subroutine s044
implicit real(4)(i-n)
i=1;j=2
!$omp atomic
i=i+j
if (abs(i-3)>0.001)print *,'error-20'
!$omp atomic
i=i*j
if (abs(i-6)>0.001)print *,'error-21'
!$omp atomic
i=i-j
if (abs(i-4)>0.001)print *,'error-22'
!$omp atomic
i=i/j
if (abs(i-2)>0.001)print *,'error-23'
end
subroutine s048
implicit real(8)(i-n)
i=1;j=2
!$omp atomic
i=i+j
if (abs(i-3)>0.001)print *,'error-20'
!$omp atomic
i=i*j
if (abs(i-6)>0.001)print *,'error-21'
!$omp atomic
i=i-j
if (abs(i-4)>0.001)print *,'error-22'
!$omp atomic
i=i/j
if (abs(i-2)>0.001)print *,'error-23'
end
subroutine s04x
implicit real(16)(i-n)
i=1;j=2
!$omp atomic
i=i+j
if (abs(i-3)>0.001)print *,'error-20'
!$omp atomic
i=i*j
if (abs(i-6)>0.001)print *,'error-21'
!$omp atomic
i=i-j
if (abs(i-4)>0.001)print *,'error-22'
!$omp atomic
i=i/j
if (abs(i-2)>0.001)print *,'error-23'
end
subroutine s031
implicit integer(1)(i-n)
i=1;j=2
!$omp atomic
i=i+j
if (i/=3)print *,'error-20'
!$omp atomic
i=i*j
if (i/=6)print *,'error-21'
!$omp atomic
i=i-j
if (i/=4)print *,'error-22'
!$omp atomic
i=i/j
if (i/=2)print *,'error-23'
end
subroutine s032
implicit integer(2)(i-n)
i=1;j=2
!$omp atomic
i=i+j
if (i/=3)print *,'error-20'
!$omp atomic
i=i*j
if (i/=6)print *,'error-21'
!$omp atomic
i=i-j
if (i/=4)print *,'error-22'
!$omp atomic
i=i/j
if (i/=2)print *,'error-23'
end
subroutine s034
implicit integer(4)(i-n)
i=1;j=2
!$omp atomic
i=i+j
if (i/=3)print *,'error-20'
!$omp atomic
i=i*j
if (i/=6)print *,'error-21'
!$omp atomic
i=i-j
if (i/=4)print *,'error-22'
!$omp atomic
i=i/j
if (i/=2)print *,'error-23'
end
subroutine s038
implicit integer(8)(i-n)
i=1;j=2
!$omp atomic
i=i+j
if (i/=3)print *,'error-20'
!$omp atomic
i=i*j
if (i/=6)print *,'error-21'
!$omp atomic
i=i-j
if (i/=4)print *,'error-22'
!$omp atomic
i=i/j
if (i/=2)print *,'error-23'
end
subroutine s021
logical(1) x1,x2
x1=.true.;x2=.false.
!$omp atomic
x1=x1.neqv.x2
if (.not.x1)print *,'error-10'
!$omp atomic
x1=x1.eqv.x2
if (x1)print *,'error-11'
x1=.true.;x2=.false.
!$omp atomic
x1=x1.or.x2
if (.not.x1)print *,'error-12'
!$omp atomic
x1=x1.and.x2
if (x1)print *,'error-13'
end
subroutine s022
logical(2) x1,x2
x1=.true.;x2=.false.
!$omp atomic
x1=x1.neqv.x2
if (.not.x1)print *,'error-10'
!$omp atomic
x1=x1.eqv.x2
if (x1)print *,'error-11'
x1=.true.;x2=.false.
!$omp atomic
x1=x1.or.x2
if (.not.x1)print *,'error-12'
!$omp atomic
x1=x1.and.x2
if (x1)print *,'error-13'
end
subroutine s024
logical(4) x1,x2
x1=.true.;x2=.false.
!$omp atomic
x1=x1.neqv.x2
if (.not.x1)print *,'error-10'
!$omp atomic
x1=x1.eqv.x2
if (x1)print *,'error-11'
x1=.true.;x2=.false.
!$omp atomic
x1=x1.or.x2
if (.not.x1)print *,'error-12'
!$omp atomic
x1=x1.and.x2
if (x1)print *,'error-13'
end
subroutine s028
logical(8) x1,x2
x1=.true.;x2=.false.
!$omp atomic
x1=x1.neqv.x2
if (.not.x1)print *,'error-10'
!$omp atomic
x1=x1.eqv.x2
if (x1)print *,'error-11'
x1=.true.;x2=.false.
!$omp atomic
x1=x1.or.x2
if (.not.x1)print *,'error-12'
!$omp atomic
x1=x1.and.x2
if (x1)print *,'error-13'
end
subroutine s011
integer(1) i,j
i=1;j=2
!$omp atomic
i=ieor(i,j)
if (i/=3)print *,'error-01'
!$omp atomic
i=ior(i,j)
if (i/=3)print *,'error-02'
j=2
!$omp atomic
i=iand(i,j)
if (i/=2)print *,'error-03'
j=3
!$omp atomic
i=max(i,j)
if (i/=3)print *,'error-04'
j=2
!$omp atomic
i=min(i,j)
if (i/=2)print *,'error-05'
j=3;k=-1;m=0
!$omp atomic
i=max(i,j,k,m)
if (i/=3)print *,'error-06'
j=2
!$omp atomic
i=min(i,j,k,m)
if (i/=-1)print *,'error-07'
!$omp atomic
i=max(j,k,m,i)
if (i/=2)print *,'error-08'
j=2
!$omp atomic
i=min(j,k,m,i)
if (i/=-1)print *,'error-09'
end
subroutine s012
integer(2) i,j
i=1;j=2
!$omp atomic
i=ieor(i,j)
if (i/=3)print *,'error-01'
!$omp atomic
i=ior(i,j)
if (i/=3)print *,'error-02'
j=2
!$omp atomic
i=iand(i,j)
if (i/=2)print *,'error-03'
j=3
!$omp atomic
i=max(i,j)
if (i/=3)print *,'error-04'
j=2
!$omp atomic
i=min(i,j)
if (i/=2)print *,'error-05'
j=3;k=-1;m=0
!$omp atomic
i=max(i,j,k,m)
if (i/=3)print *,'error-06'
j=2
!$omp atomic
i=min(i,j,k,m)
if (i/=-1)print *,'error-07'
!$omp atomic
i=max(j,k,m,i)
if (i/=2)print *,'error-08'
j=2
!$omp atomic
i=min(j,k,m,i)
if (i/=-1)print *,'error-09'
end
subroutine s014
integer(4) i,j
i=1;j=2
!$omp atomic
i=ieor(i,j)
if (i/=3)print *,'error-01'
!$omp atomic
i=ior(i,j)
if (i/=3)print *,'error-02'
j=2
!$omp atomic
i=iand(i,j)
if (i/=2)print *,'error-03'
j=3
!$omp atomic
i=max(i,j)
if (i/=3)print *,'error-04'
j=2
!$omp atomic
i=min(i,j)
if (i/=2)print *,'error-05'
j=3;k=-1;m=0
!$omp atomic
i=max(i,j,k,m)
if (i/=3)print *,'error-06'
j=2
!$omp atomic
i=min(i,j,k,m)
if (i/=-1)print *,'error-07'
!$omp atomic
i=max(j,k,m,i)
if (i/=2)print *,'error-08'
j=2
!$omp atomic
i=min(j,k,m,i)
if (i/=-1)print *,'error-09'
end
subroutine s018
integer(8) i,j
i=1;j=2
!$omp atomic
i=ieor(i,j)
if (i/=3)print *,'error-01',i
!$omp atomic
i=ior(i,j)
if (i/=3)print *,'error-02',i
j=2
!$omp atomic
i=iand(i,j)
if (i/=2)print *,'error-03'
j=3
!$omp atomic
i=max(i,j)
if (i/=3)print *,'error-04'
j=2
!$omp atomic
i=min(i,j)
if (i/=2)print *,'error-05'
j=3;k=-1;m=0
!$omp atomic
i=max(i,j,k,m)
if (i/=3)print *,'error-06'
j=2
!$omp atomic
i=min(i,j,k,m)
if (i/=-1)print *,'error-07'
!$omp atomic
i=max(j,k,m,i)
if (i/=2)print *,'error-08'
j=2
!$omp atomic
i=min(j,k,m,i)
if (i/=-1)print *,'error-09'
end
subroutine s064
real(4) i,j
i=1;j=3
!$omp atomic
i=max(i,j)
if (i/=3)print *,'error-04'
j=2
!$omp atomic
i=min(i,j)
if (i/=2)print *,'error-05'
j=3;k=-1;m=0
!$omp atomic
i=max(i,j,k,m)
if (i/=3)print *,'error-06'
j=2
!$omp atomic
i=min(i,j,k,m)
if (i/=-1)print *,'error-07'
!$omp atomic
i=max(j,k,m,i)
if (i/=2)print *,'error-08'
j=2
!$omp atomic
i=min(j,k,m,i)
if (i/=-1)print *,'error-09'
end
subroutine s068
real(8) i,j
i=1;j=3
!$omp atomic
i=max(i,j)
if (i/=3)print *,'error-04'
j=2
!$omp atomic
i=min(i,j)
if (i/=2)print *,'error-05'
j=3;k=-1;m=0
!$omp atomic
i=max(i,j,k,m)
if (i/=3)print *,'error-06'
j=2
!$omp atomic
i=min(i,j,k,m)
if (i/=-1)print *,'error-07'
!$omp atomic
i=max(j,k,m,i)
if (i/=2)print *,'error-08'
j=2
!$omp atomic
i=min(j,k,m,i)
if (i/=-1)print *,'error-09'
end
subroutine s06x
real(16) i,j
i=1;j=3
!$omp atomic
i=max(i,j)
if (i/=3)print *,'error-04'
j=2
!$omp atomic
i=min(i,j)
if (i/=2)print *,'error-05'
j=3;k=-1;m=0
!$omp atomic
i=max(i,j,k,m)
if (i/=3)print *,'error-06'
j=2
!$omp atomic
i=min(i,j,k,m)
if (i/=-1)print *,'error-07'
!$omp atomic
i=max(j,k,m,i)
if (i/=2)print *,'error-08'
j=2
!$omp atomic
i=min(j,k,m,i)
if (i/=-1)print *,'error-09'
end
call s011
call s012
call s014
call s018
call s021
call s022
call s024
call s028
call s031
call s032
call s034
call s038
call s044
call s048
call s04x
call s054
call s058
call s05x
call s064
call s068
call s06x
print *,'pass'
end
