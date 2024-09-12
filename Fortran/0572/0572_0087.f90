PROGRAM MAIN
  REAL,pointer:: a(:,:)
  allocate(a(2,2))
  a(1,1) = 10.4
  a(1,2) = 20.0
  a(2,1) = 10.8
  a(2,2) = 20.2
  call sub(a)
  print*,"pass"

  contains
  subroutine sub(a)
  implicit none
  REAL ,target :: a(:,:)
  REAL:: b(2,2)
  b = ERFC_SCALED(a)
    if( .not.(b(1,1)>0.053 .and. b(1,1)<0.056))  print *,101
    if( .not.(b(1,2)>0.026 .and. b(1,2)<0.029))  print *,102
    if( .not.(b(2,1)>0.051 .and. b(2,1)<0.054))  print *,103
    if( .not.(b(2,2)>0.025 .and. b(2,2)<0.029))  print *,104
  end subroutine sub
END PROGRAM MAIN
