contains
integer function f()
  common /foo/ l
  integer l
  integer k(l)
  save
  !$omp threadprivate(k)
  f=0
end function f
end
