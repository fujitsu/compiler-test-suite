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
  b = BESSEL_Y0(a)
            if( .not.(b(1,1)>0.31 .and. b(1,1)<0.34))  print *,101
             if( .not.(b(2,1)>0.45 .and. b(2,1)<0.48))  print *,102
              if( .not.(b(1,2)>0.50 .and. b(1,2)<0.54))  print *,103
               if( .not.(b(2,2)>0.51 .and. b(2,2)<0.55))  print *,104
    end subroutine sub
END PROGRAM
