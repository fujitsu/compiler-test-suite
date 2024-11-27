subroutine s(a)
integer,intent(in) :: a
!$omp threadprivate(a)
end subroutine 

end
