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
  b = BESSEL_JN(n,a)
    if( (b(1,1)>0.207 .and. b(1,1)<0.206))  print *,101
    if( (b(2,1)>0.307 .and. b(2,1)<0.306))  print *,102
    if( (b(1,2)>0.352 .and. b(1,2)<0.351))  print *,103
    if( (b(2,2)>0.396 .and. b(2,2)<0.395))  print *,104
  end subroutine sub
END PROGRAM
