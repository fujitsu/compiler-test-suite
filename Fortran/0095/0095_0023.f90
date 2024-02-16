PROGRAM test
  REAL,pointer:: a(:,:)
  allocate(a(2,2))
    a(1,1)= 3.0
    a(1,2)= 4.4
    a(2,1)= 3.8
    a(2,2)= 4.2
call sub(a)
  print*,"pass"

  contains
  subroutine sub(a)
  implicit none
  REAL ,target :: a(:,:)
  REAL:: b(2,2)
  b = LOG_GAMMA(a)
  if( .not.(b(1,1)>0.68 .and. b(1,1)<0.70))  print *,101
  if( .not.(b(2,1)>1.53 .and. b(2,1)<1.55))  print *,102
  if( .not.(b(1,2)>2.30 .and. b(1,2)<2.32))  print *,103
  if( .not.(b(2,2)>2.03 .and. b(2,2)<2.05))  print *,104
        end subroutine sub
END PROGRAM
