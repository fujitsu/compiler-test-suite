module m
  integer,save :: id
  integer :: n
  !$omp threadprivate(id)
    namelist /nam/ n
contains

  subroutine sub
    read(unit=1,nml=nam)
  end subroutine 
end module m
print *,'pass'
end
