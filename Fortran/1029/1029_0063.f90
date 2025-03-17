module mod
  type z
    complex,allocatable::ca(:)
  end type
end module

  use mod
  type(z),allocatable::a(:)

  allocate(a(2))
  allocate(a(1)%ca(3))
  a(1)%ca=(/(1.0,1.0),(2.0,2.0),(3.0,3.0)/)
  n=0

  call sub1()
  call sub2()
  call sub3()

 print *,'pass'

 contains

 subroutine sub1()
  if ( (imag(a(1)%ca(1)).eq.1.0.and.real(a(1)%ca(1)).eq.1.0) .or. &
       (real(a(1)%ca(1)).eq.0.0.and.imag(a(1)%ca(1)).eq.0.0) ) then
    n=n+1
  endif
 end subroutine 

 subroutine sub2()
  if ( .not.(a(1)%ca(1).ne.(1.0,1.0)) .and. &
       .not.(a(1)%ca(2).ne.(2.0,2.0)) .and. &
       .not.(a(1)%ca(3).ne.(3.0,3.0)) .and. &
       .not.(a(1)%ca(1).ne.a(1)%ca(3)-a(1)%ca(2))      ) then
    n=n+1
  endif
 end subroutine 

 subroutine sub3()
  if ( .not.(a(1)%ca(1).ne.(1.0,1.0) )) then
    if ( .not.(a(1)%ca(2).ne.(2.0,2.0) )) then
      if ( .not.(a(1)%ca(3).ne.(3.0,3.0) )) then
        if ( .not.(a(1)%ca(3).ne.abs(a(1)%ca(1)-a(1)%ca(2)))) then
          n=n+1
        endif
      endif
    endif
  endif
 end subroutine

end
