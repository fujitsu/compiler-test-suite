call test01()
print *,"pass"
end

subroutine test01()
procedure(integer) ,pointer :: ip
integer ,external :: iii,jjj
ip=>jjj
!$omp single
!$omp parallel private(ip)
ip=>iii
i=ip()
if (i.ne.2) print *,'fail'
!$omp end parallel
!$omp end single
end
function iii()
iii=2
end 
function jjj()
jjj=100
end
