call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
call test07()
print *,'pass'
end

subroutine test01()
i=1
!$OMP PARALLEL IF(.true.)
i=i+1
!$OMP END PARALLEL
end subroutine

subroutine test02()
i=1
!$OMP PARALLEL IF(1.eq.i)
i=i+1
!$OMP END PARALLEL
end subroutine

subroutine test03()
logical lfun
lfun()=.true.
i=1
!$OMP PARALLEL IF(lfun())
i=i+1
!$OMP END PARALLEL
end subroutine

subroutine test04()
i=1
!$OMP PARALLEL IF(.true._1)
i=i+1
!$OMP END PARALLEL
end subroutine

subroutine test05()
i=1
!$OMP PARALLEL IF(.true._2)
i=i+1
!$OMP END PARALLEL
end subroutine

subroutine test06()
i=1
!$OMP PARALLEL IF(.true._4)
i=i+1
!$OMP END PARALLEL
end subroutine

subroutine test07()
i=1
!$OMP PARALLEL IF(.true._8)
i=i+1
!$OMP END PARALLEL
end subroutine
