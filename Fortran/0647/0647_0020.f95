  program main

    implicit none

    integer , dimension(0:5) :: a
    integer , dimension(0:5) :: b

    integer :: i,j,ii
    integer :: error = 0
    equivalence(i,ii)

    a = 0
    b = 0

    forall (i=1:5)
      a(i) = a(i-1)+1
    end forall
    if (any(a(1:) /= (/1,1,1,1,1/))) then
      print *, " +++ error : item 1 +++ "
      error = error +1
    endif

    forall (j=1:5)
      a(j) = j
      b(j) = a(6-j)+1
    end forall
    if (any(b((/1,2,3,4,5/)) /= (/6,5,4,3,2/))) then
      print *, " +++ error : item 2 +++ "
      error = error +1
    endif

    forall (i=1:5,j=5:1:-1)
      a(i) = b(6-i)-1
      b(j) = 0
    end forall
    if ((any(a /= (/0,1,2,3,4,5/))) .or. (any(b /= 0))) then
      print *, " +++ error : item 3 +++ "
      error = error +1
    endif

    ii = 5
    forall (i=1:5:1)
      b(i) = a(ii)
    end forall
    if (any(b(1:5) /= 5)) then
      print *, " +++ error : item 4 +++ "
      error = error +1
    endif

    forall (i=1:5,a(i-1)>=3)
      a(i) = 2
    end forall
    if (any(a(0:5) /= (/0,1,2,3,2,2/))) then
      print *, " +++ error : item 5 +++ ",a
      error = error +1
    endif

    if (error == 0) then
      print *," *** pass *** "
    endif

  end program main
