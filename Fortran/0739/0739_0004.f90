  logical :: first_time2=.true.
  if (first_time2 .neqv. .true.) write(6,*) "NG"
  call record()
  print *,'pass'
contains
  subroutine record()
    type n_mer2
     integer(4)            :: nb_of_element=1
    end type n_mer2
    logical, save :: first_time=.true.
    type(n_mer2), save,dimension(:), allocatable :: array
    if (first_time .neqv. .true.) write(6,*) "NG"
    allocate(array(1))
  end subroutine record
end

