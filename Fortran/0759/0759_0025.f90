integer function f()
  !$omp threadprivate(f)
  save
  f=1
end function

end
