integer function f()
  !$omp threadprivate(a)
  common /com/ a
  save
  f=1
end function

end
