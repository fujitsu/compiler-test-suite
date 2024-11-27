type z
  integer(2),allocatable::za2(:)
end type
type (z),allocatable::a(:)
type (z),allocatable::b(:)
logical(2),allocatable::mask(:)
integer(2)            ::vs1(2),vs2(2)

  vs1=(/1,2/)
  vs2=(/2,1/)
  allocate(mask(2))
  mask = (/.true.,.false./)
  allocate(a(2))
  allocate(b(2))

  forall(i=1:3:1)
    where(mask(vs1))
      a(vs2) = z(vs1)
    end where
  end forall

  forall(i=1:3)
    where(mask(vs2))
      b(vs1) = a(vs1)
    end where
  end forall

  if (allocated(a(1)%za2)) write(6,*) "NG"
  if (allocated(a(2)%za2)) then
    if (any(a(2)%za2/=(/1,2/))) write(6,*) "NG"
    deallocate(a(2)%za2)
  else 
    write(6,*) "NG"
  end if

  if (allocated(b(1)%za2)) write(6,*) "NG"
  if (allocated(b(2)%za2)) then
    if (any(b(2)%za2/=(/1,2/))) write(6,*) "NG"
    deallocate(b(2)%za2)
  else
    write(6,*) "NG"
  end if

 print *,'pass'
end
