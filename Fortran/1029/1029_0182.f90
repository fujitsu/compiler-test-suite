module mod
  type z
    character(3),allocatable::ch(:)
  end type
end module

program abc
  call sub()
  print *,'pass'
end program

subroutine sub()
  use mod
  type(z)::a

  allocate(a%ch(4))
  a%ch(1)='aaa'
  a%ch(2)='bbb'
  a%ch(3)='ccc'
  a%ch(4)='ddd'

  n=0
  if ( (a%ch(1).gt.'aaa' .and. a%ch(2).gt.'bbb') ) then
    write(6,*) "NG"
  else
    n=n+1
  endif
  if ( (a%ch(3).gt.'ccb' .and. a%ch(4).gt.'ddc') ) then
    n=n+1
  else
    write(6,*) "NG"
  endif
  if ( (a%ch(1).gt.'aaa' .and. a%ch(2).gt.'bbb') .or. &
       (a%ch(3).gt.'ccb' .and. a%ch(4).gt.'ddc') ) then
    n=n+1
  else
    write(6,*) "NG"
  endif
  if ( (a%ch(1).ne.'aaa' .or. a%ch(2).ne.'bbb') .or. &
       (a%ch(3).ne.'ccc' .or. a%ch(4).ne.'ddd') .or. &
       (n.ne.3) ) write(6,*) "NG"
  if (n/=3) write(6,*) "NG"
end subroutine
