module module_dimension
  INTEGER,save :: my_id
  INTEGER :: NN
  !$OMP threadprivate(my_id)
contains

  subroutine n_size()
    implicit none
    integer           :: ifl=11,ios=0
    character(len=80) :: Dmns
    namelist /DIM/ NN
    Dmns='dimen.h_serial'
    open(ifl,file=Dmns,form='formatted',status='old',iostat=ios)
    rewind ifl
    read(unit=ifl,nml=DIM,iostat=ios)
  end subroutine n_size
end module module_dimension
print *,'pass'
end
