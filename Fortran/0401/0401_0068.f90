program main
print *,'pass'
contains
subroutine s
  integer l
  !$omp threadprivate(l)
  save
end subroutine s
integer function f()
  integer l
  !$omp threadprivate(l)
  save
  f=0
end function f
end

subroutine s
  integer l
  !$omp threadprivate(l)
  save
end subroutine s
integer function f()
  integer l
  !$omp threadprivate(l)
  save
  f=0
end function f
