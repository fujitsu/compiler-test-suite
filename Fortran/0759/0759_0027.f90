integer function f()
  common /com/ a
  save
  !$omp threadprivate(a)
  f=1
end function

end
