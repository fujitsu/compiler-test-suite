integer function f()
  save
  !$omp threadprivate(f)
  f=1
end function

end
