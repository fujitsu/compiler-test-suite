subroutine s1
  !$omp threadprivate(/com1/)
  common /com1/ a
end

subroutine s2
  save
  !$omp threadprivate(a)
  allocatable a
end 

print *,"pass"
end
