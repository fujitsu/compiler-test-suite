subroutine s
!$omp threadprivate(/com/,p)
integer, pointer :: p
common /com/ p
end subroutine

end
