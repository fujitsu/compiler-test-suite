
  implicit none
  logical,target,save :: ld = .TRUE.
  type tzo
  end type tzo
  type(tzo),target,save :: t0
  
  type ty1
     logical,pointer :: pld=>ld
     type(tzo),pointer :: p0=>t0
  end type ty1
  type (ty1) :: str

  print *, str%pld
  print *, str%p0
end program
