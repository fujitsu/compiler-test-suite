integer function f()
  common /com/ a
  save /com/
  !$omp threadprivate(a)
  f=1
end function

end
