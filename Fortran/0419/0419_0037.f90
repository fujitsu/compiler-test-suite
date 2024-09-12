interface
function func1() result (ret)
integer,allocatable :: ret(:)
end function func1
function func2() result (ret)
integer,allocatable :: ret
end function func2
end interface
integer,allocatable :: iii(:)
integer,allocatable :: jjj
!$omp parallel private(i)
iii = func1()
jjj= func2()
!$omp single private(iii,jjj)
iii(1) = 11
jjj = 11
!$omp end single copyprivate(i)
if(any(iii/=10)) print *,'err1'
if(jjj/=10) print *,'err2'
!$omp end parallel
print *,'pass'
end
function func1() result (ret)
integer,allocatable :: ret(:)
ret =[ 10]
end function
function func2() result (ret)
integer,allocatable :: ret
ret =10
end function
