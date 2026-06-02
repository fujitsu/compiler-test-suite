subroutine s1
ip=100
ip2=-100
!$omp parallel default(shared)
    DO CONCURRENT ( ip = 0:1)
    DO CONCURRENT ( ip2 = 0:1)
    DO CONCURRENT ( ip3 = 0:1)
    END DO 
    END DO 
    END DO 
!$omp end parallel
if (ip/=100) print *,1001,ip
if (ip2/=-100) print *,1002,ip2
end
call s1
print *,'pass'
end
