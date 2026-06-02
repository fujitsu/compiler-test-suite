call test01()
call test02()
print *,'pass'
end

subroutine test02()
integer,pointer  :: ip
integer,target :: it

!$omp parallel 
 ip=>it
 it=1
 if (ip.ne.1) print *,"fail"
!$omp end parallel

!$omp parallel default(private)
 ip=>it
 it=1
 if (ip.ne.1) print *,"fail"
!$omp end parallel

!$omp parallel private(it)
 ip=>it
 it=1
 if (ip.ne.1) print *,"fail"
!$omp end parallel

!$omp parallel private(ip)
 ip=>it
 it=1
 if (ip.ne.1) print *,"fail"
!$omp end parallel

end

subroutine test01()
type ty1
  integer,pointer  :: ip
end type
type(ty1) :: str01
integer,target :: it

!$omp parallel 
 str01%ip=>it
 it=1
 if (str01%ip.ne.1) print *,"fail"
!$omp end parallel

!$omp parallel default(private)
 str01%ip=>it
 it=1
 if (str01%ip.ne.1) print *,"fail"
!$omp end parallel

!$omp parallel private(it)
 str01%ip=>it
 it=1
 if (str01%ip.ne.1) print *,"fail"
!$omp end parallel

!$omp parallel private(str01)
 str01%ip=>it
 it=1
 if (str01%ip.ne.1) print *,"fail"
!$omp end parallel

end
