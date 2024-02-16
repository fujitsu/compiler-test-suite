PROGRAM test
  REAL,pointer:: a(:,:)
  allocate(a(2,2))
  a(1,1) = 3.0
  a(1,2) = 4.0
  a(2,1) = 5.0
  a(2,2) = 3.5
  call sub(a)
  print*,"pass"

  contains
  subroutine sub(a)
  implicit none
  REAL ,target :: a(:,:)
  REAL:: b(2,2)
  b = BESSEL_Y1(a)
         if( .not.(b(1,1)>0.30 .and. b(1,1)<0.34))  print *,101
          if( .not.(b(2,1)>0.12 .and. b(2,1)<0.16))  print *,102
           if( .not.(b(1,2)>0.37 .and. b(1,2)<0.40))  print *,103
            if( .not.(b(2,2)>0.40 .and. b(2,2)<0.45))  print *,104
    end subroutine sub
END PROGRAM
