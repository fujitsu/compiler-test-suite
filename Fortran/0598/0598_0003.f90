subroutine s2
implicit none
integer::a(0:1,0:1,0:1)
integer::ip,ip2,ip3,np,np2,np3
a=reshape([1,2,3,4,5,6,7,8],[2,2,2])
ip=100
ip2=100
ip3=100
np=100
np2=100
np3=100
!$omp task  shared(a)
    write(1,*) (((a(ip,ip2,ip3),ip = 0,1),ip2=0,1),ip3=0,1)
    write(2,*) [(((np+np2+np3,np=0,1),np2=0,1),np3 = 0,1)]
!$omp end task
if (ip/=100) print *,1001,ip
if (ip2/=100) print *,1002,ip2
if (ip3/=100) print *,1003,ip3
if (np/=100) print *,1011,np
if (np2/=100) print *,1012,np2
if (np3/=100) print *,1001,np3
end
integer::n1(8)
call omp_set_num_threads(2)
call s2
rewind 1
read(1,*) n1
if (any([n1]/=[1,2,3,4,5,6,7,8])) print *,201
rewind 2
read(2,*) n1
if (any([n1]/=[0,1,1,2,1,2,2,3])) print *,301
print *,'pass'
end
