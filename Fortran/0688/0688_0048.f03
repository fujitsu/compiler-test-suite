program taskyield__________________________________________________________________________________________________________________________________________________________________________________________________________________________________
!$omp taskyield
call sub()
print *,fun()
contains
subroutine sub()
!$omp taskyield
end subroutine
character(:) function fun() result(res)
allocatable::res
allocate(character(18)::res)
!$omp taskyield
res='pass'
end function
end program taskyield__________________________________________________________________________________________________________________________________________________________________________________________________________________________________
