subroutine s2
implicit none
integer::a(0:1)
integer::ip
a=[1,2]
ip=100
!$omp task  shared(a)
    write(1,*) (a(ip),ip = 0,1)
if (ip/=2) print *,2001,ip
!$omp end task
if (ip/=100) print *,1001,ip
end
integer::n1(2)
call omp_set_num_threads(2)
call s2
rewind 1
read(1,*) n1
if (any([n1]/=[1,2])) print *,201
print *,'pass'
end
