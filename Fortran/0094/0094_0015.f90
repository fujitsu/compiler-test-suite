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
  REAL:: b(2,2)
  b = BESSEL_J1(a)
                if( .not.(b(1,1)>0.53 .and. b(1,1)<0.55))  print *,101
                if( .not.(b(2,1)>0.57 .and. b(2,1)<0.59))  print *,102
                if( .not.(b(1,2)>0.56 .and. b(1,2)<0.59))  print *,103
                if( .not.(b(2,2)>0.54 .and. b(2,2)<0.56))  print *,104
    end subroutine sub
END PROGRAM
