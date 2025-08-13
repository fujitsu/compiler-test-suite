program main
print *,'pass'
contains
subroutine s
  integer , save :: l
  !$omp threadprivate(l)
end subroutine s
integer function f()
  integer , save :: l
  !$omp threadprivate(l)
  f=0
end function f
end

subroutine s
  integer , save :: l
  !$omp threadprivate(l)
end subroutine s
integer function f()
  integer , save :: l
  !$omp threadprivate(l)
  f=0
end function f
