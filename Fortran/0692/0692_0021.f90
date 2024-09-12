module m
  integer,save :: id
  integer :: n
  !$omp threadprivate(id)
contains

  subroutine sub
    namelist /nam/ n
    read(unit=1,nml=nam)
  end subroutine 
end module m
print *,'pass'
end
