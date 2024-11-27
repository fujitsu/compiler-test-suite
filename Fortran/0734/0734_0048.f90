Program Main3
  Implicit None
  Integer :: nT1, ierr, M, i, j, nT2, min_size

  Type Tk
     Integer, Dimension(:), Pointer :: p_iary
  End Type Tk

  Type(Tk), Dimension(:), Pointer :: pT1, pT2

  nT1 = 2
  Allocate (pT1(nT1), stat=ierr)
  Do i = 1, nT1
     M = i+1
     Allocate (pT1(i)%p_iary(M), stat=ierr)
     pT1(i)%p_iary = (/ (i*10+j , j = 1, M) /)
     Write (1,9130) i, pT1(i)%p_iary
  End Do
9130 Format (1x, 'pT1(', i0, ')%p_iary: ', 10i5)

  nT2 = 1
  Allocate(pT2(1:nT2), STAT=ierr)

  min_size = Min(Size(pT1), nT2)
  pT2(1:min_size) = pT1(1:min_size)
  Call Wprint(pT1, nT1, pT2, nT2, 'after pT2(1:min_size) = pT1(1:min_size)')

  Write (1,*)
  pT2(1)%p_iary = -10
  Call Wprint(pT1, nT1, pT2, nT2, 'after pT2(1)%p_iary = -10')

  print *,'pass'

Contains

  Subroutine Wprint(pT1, nT1, pT2, nT2, header)
    Implicit None

    Type(Tk),    Dimension(:), Pointer :: pT1, pT2
    Integer,                Intent(in) :: nT1, nT2
    Character(*), Optional, Intent(in) :: header

    Character(*), Parameter :: Lead = 'After Reallocate: '
    Character(*), Parameter :: hT1 = 'pT1('
    Character(*), Parameter :: hT2 = 'pT2('
    Integer :: i
    If (Present(header)) Write (1,*) '**** ', Trim(header)

    Do i = 1, nT1
       If (i == 1) Then
          Write (1,9230) Lead, hT1, i, pT1(i)%p_iary
       Else
          Write (1,9230) Repeat(' ', Len(Lead)), hT1, i, pT1(i)%p_iary
       End If
    End Do
9230 Format (1x, a, a, i0, ')%p_iary: ', 10i5)

    Do i = 1, nT2
       If (i == 1) Then
          Write (1,9230) Lead, hT2, i, pT2(i)%p_iary
       Else
          Write (1,9230) Repeat(' ', Len(Lead)), hT2, i, pT2(i)%p_iary
       End If
    End Do

  End Subroutine Wprint

End Program Main3
