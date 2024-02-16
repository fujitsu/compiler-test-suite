PROGRAM test
  REAL,pointer:: a(:,:)
  allocate(a(2,2))
  a(1,1) = 1.4
  a(1,2) = 2.0
  a(2,1) = 1.8
  a(2,2) = 2.2
  call sub(a)
  print*,"pass"

  contains
  subroutine sub(a)
  implicit none
  REAL ,target :: a(:,:)
  INTEGER:: n(2,2)
  REAL:: b(2,2)
  n(:,:)=2
  b = BESSEL_YN(n,a)
    if( .not.(b(1,1)>-1.023 .and. b(1,1)<-1.022))  print *,101
    if( .not.(b(2,1)>-0.726 .and. b(2,1)<-0.725))  print *,102
    if( .not.(b(1,2)>-0.618 .and. b(1,2)<-0.617))  print *,103
    if( .not.(b(2,2)<-0.519 .and. b(2,2)>-0.52))  print *,104
  end subroutine sub
END PROGRAM
