subroutine sub1()
integer :: a
a=1
if (a .ne. 0) then
!$omp taskyield
endif
end

subroutine sub2()
goto 100
100 continue
!$omp taskyield
end

call sub1()
call sub2()
print *,'pass'
end
