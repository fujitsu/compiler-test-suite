  program main

    implicit none

    integer , dimension(3) :: a
    integer , dimension(3) :: b

    integer , dimension(3,3) :: c
    integer , dimension(3,3) :: d

    integer :: i,j
    logical :: value = .false.
    integer :: error = 0

    a = 0
    b = 0

    forall (i=1:3,.false.)
      a(i) = 100
    end forall
    if (any(a /= 0)) then
      print *, " +++ error : item 1 +++ "
      error = error +1
    endif

    forall (j=3:1:-1,.false.)
      b(i) = 100
    end forall
    if (any(b /= 0)) then
      print *, " +++ error : item 2 +++ "
      error = error +1
    endif

    forall (i=1:3,value)
      a(i) = 100
    end forall
    if (any(a /= 0)) then
      print *, " +++ error : item 3 +++ "
      error = error +1
    endif

    forall (j=3:1:-1,value)
      b(i) = 100
    end forall
    if (any(b /= 0)) then
      print *, " +++ error : item 4 +++ "
      error = error +1
    endif

    c = 1
    d = 1

    forall (i=1:3,j=1:3,value.or..false.)
      c(i,j) = 100
    end forall
    if (any(c /= 1)) then
      print *, " +++ error : item 5 +++ "
      error = error +1
    endif

    forall (i=3:1:-1,j=3:1:-1,.false..and.value)
      d(i,j) = 100
    end forall
    if (any(d /= 1)) then
      print *, " +++ error : item 6 +++ "
      error = error +1
    endif

    forall (i=1:3,j=1:3,.not..false..and.value)
      c(i,j) = 100
    end forall
    if (any(c /= 1)) then
      print *, " +++ error : item 7 +++ "
      error = error +1
    endif

    forall (i=3:1:-1,j=3:1:-1,.false.)
      d(i,j) = 100
    end forall
    if (any(d /= 1)) then
      print *, " +++ error : item 8 +++ "
      error = error +1
    endif

    if (error == 0) then
      print *," *** pass *** "
    endif

  end program main