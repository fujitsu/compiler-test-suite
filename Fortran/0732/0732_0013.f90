program main
  implicit none

  integer  ::  i, st
  integer, parameter         :: dp = 8
  type Smatrix
     integer                :: ne
     integer      , pointer :: i(:),j(:),ip(:)
     real(kind=dp), pointer :: z(:)
  end type Smatrix

  integer,parameter         :: n = 10
  real(kind=dp),allocatable :: x(:)
  type(Smatrix)             :: H,HH

  nullify(H%ip,H%i,H%j,H%z,H%ip,HH%i,HH%j,HH%z,HH%ip)
  write(4,*) 'At the begining of test'
  call print_status(H)
  allocate(H%i(n),H%j(n),H%z(n), stat=st)
  write(4,*) 'Before the first call of Heval'
  write(4,*) "stat H: ", st
  allocate( x(n), stat=st )
  write(4,*) "stat X: ", st
  call print_status(H)
  x = (/ (real(i),i=1,n) /)
  H = Heval(x,.true.)
  write(4,*) 'After the first call of Heval'
  call print_status(H)
  write(4,*) "X: ", allocated( X )
  call print_values()
  write(4,*)' '
  x=x+1.0_dp
  HH%z => H%z
  write(4,*) 'associated(HHz,H%z)',associated(HH%z,H%z)
  write(4,*) 'Status of HH'
  call print_status(HH)
  HH=Heval(x)
  write(4,*) 'associated(HHz,H%z)',associated(HH%z,H%z)
  write(4,*) 'HH%z:',HH%z
  write(4,*) 'H%z:',H%z
  nullify(HH%z)
  write(4,*) 'After the second call of Heval'
  call print_status(H)
  write(4,*) "X: ", allocated( X )
  call print_values()
  deallocate( x, stat=st)
  write(4,*) "stat X: ", st
  deallocate(H%i,H%j,H%z, stat=st)
  write(4,*) "stat H: ", st
  print *,'pass'

contains

  function Heval(x,flagij) result(H)
    type(Smatrix)    :: H
    logical,optional :: flagij
    real(kind=dp)    :: x(:)
    integer :: i, n,st

    write(4,*) 'Heval:Before nullify'
    call print_status(H)
    nullify(H%i,H%j,H%z,H%ip)
    nullify(H%ip)
    n  = Size(x)
    if(Present(flagij) .and. .true.)then
       write(4,*) 'Heval:Before allocate'
       call print_status(H)
       allocate(H%i(n),H%j(n),H%z(n),stat=st)
       write(4,*) 'Heval:st=',st
       write(4,*)'Heval:After allocate'
       call print_status(H)
       H%i=(/(i,i=1,n)/)
       H%j=(/(i,i=1,n)/)
       H%z=x
    else
       write(4,*) 'Heval:Before allocate'
       call print_status(H)
       allocate(H%z(n),stat=st)
       write(4,*) 'Heval:st=',st
       write(4,*)'Heval:After allocate'
       call print_status(H)
       H%z=x
    endif
    return
  end function Heval

  subroutine print_status(H)
    type(Smatrix),intent(in) :: H
    if(associated(H%I))then
       write(4,*) "I :","T"," size:",size(H%i)
    else
       write(4,*) "I :","F"
    end if
    if(associated(H%j))then
       write(4,*) "J :","T"," size:",size(H%j)
    else
       write(4,*) "J :","F"
    end if
    if(associated(H%z))then
       write(4,*) "Z :","T"," size:",size(H%z)
    else
       write(4,*) "Z :","F"
    end if
    if(associated(H%ip))then
       write(4,*) "IP:","T"," size:",size(H%z)
    else
       write(4,*) "IP:","F"
    end if
    return
  end subroutine print_status

  subroutine print_values()
    character(len=30)         :: fmt1,fmt2
    write(4,*) 'Printing the values'
    write(fmt1,'(a10,i3,a10)') '(a4,(',n,'i5))'
    write(fmt2,'(a10,i3,a10)') '(a4,(',n,'f5.1))'
    write(8,fmt1)'H%i:',(H%i(i),i=1,n)
    write(8,fmt1)'H%j:',(H%j(i),i=1,n)
    write(8,fmt2)'H%z:',(H%z(i),i=1,n)
  end subroutine print_values

end program main
