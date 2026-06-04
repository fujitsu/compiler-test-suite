call test01()
call test02()
call test03()
print *,'pass'
end 

subroutine test03()

      common /cc/ ip
      integer,pointer :: ip
!$omp threadprivate(/cc/)

allocate    (ip)
ip=1
!$omp parallel copyin(ip)
ip=2
!$omp end parallel
end

subroutine test02()
end

subroutine test01()
end
