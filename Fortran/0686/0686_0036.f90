call test01()
print *,'pass'
end 

subroutine test01()
integer(kind=1) ifun
ifun(i)=0 
i=1
ip=1
!$omp parallel private(ip) num_threads(int(i,1))
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(int(ip,1))
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(int(11,1))
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(int(2.0,1))
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(ifun(ip))
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(jfun(ip))
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(1_1)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(1_2)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(1_4)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(1_8)
ip=2
!$omp end parallel
contains
function jfun(i)
integer(kind=1) jfun
jfun=i
end function
end

subroutine test02()
integer(kind=1) ifun
ifun(i)=0 
i=1
!$omp parallel private(ip) num_threads(int(i,1)+0)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(int(ip,1)+0)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(int(11,1)+0)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(int(2.0,1)+0)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(ifun(ip)+0)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(jfun(ip)+0)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(1_1)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(1_2)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(1_4)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(1_8)
ip=2
!$omp end parallel
contains
function jfun(i)
integer(kind=1) jfun
jfun=i
end function
end

subroutine test03()
i=1
!$omp parallel private(ip) num_threads(i)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(ip)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(i+1)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(ip+0)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads((ip))
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(jfun(ip))
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(1_1)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(1_2)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(1_4)
ip=2
!$omp end parallel
!$omp parallel private(ip) num_threads(1_8)
ip=2
!$omp end parallel
contains
function jfun(i)
integer(kind=1) jfun
jfun=i
end function
end
