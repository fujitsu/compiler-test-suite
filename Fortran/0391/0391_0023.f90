block data
 common /cmn/ k1,k2,k3
 data k1,k2,k3/1,2,3/
!$omp threadprivate(/cmn/)
end 
subroutine s1
 common /cmn/ k1,k2,k3
!$omp threadprivate(/cmn/)
k2=12
call s2(0)

!$omp parallel 
k1=k1+1
k2=k2+1
k3=k3+1
call s2(10)
!$omp end parallel

call s2(1)

!$omp parallel 
k1=k1+1
k2=k2+1
k3=k3+1
call s2(11)
!$omp end parallel

call s2(2)
end
subroutine s2(n)
 common /cmn/ k1,k2,k3
!$omp threadprivate(/cmn/)
write(1,'(z16.16)') loc(k1)
select case(n)
case (0)
 if (k1/=1) print *,3001,n,k1
 if (k2/=12) print *,3002,n,k2
 if (k3/=3) print *,3003,n,k3
case (1)
 if (k1/=2) print *,3031,n,k1
 if (k2/=13) print *,3302,n,k2
 if (k3/=4) print *,3033,n,k3
case (2)
 if (k1/=3) print *,3031,n,k1
 if (k2/=14) print *,3302,n,k2
 if (k3/=5) print *,3033,n,k3
case (10)
 if (k1/=2) print *,3011,n,k1
 if (k2/=13.and. k2/=3) print *,3112,n,k2
!$omp master
 if (k2/=13) print *,3012,n,k2
write(1,'("master :",z16.16)') loc(k1)
!$omp end master
 if (k3/=4) print *,3013,n,k3
case (11)
 if (k1/=3) print *,3021,n,k1
 if (k2/=14.and. k2/=4) print *,3122,n,k2
!$omp master
 if (k2/=14) print *,3022,n,k2
!$omp end master
 if (k3/=5) print *,3023,n,k3
end select
end 

call s1
print *,'pass'
end
