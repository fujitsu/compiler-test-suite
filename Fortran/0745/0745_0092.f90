Module default

  Implicit None

  Public

  Integer, Parameter   :: strLen = 48
  Integer, Parameter   :: lstrLen = 2*strLen

End Module default

Module util

  Use default, Only: strLen, lstrLen

  Implicit None

  Private
  Public :: regurgitate

Contains

  Function regurgitate(line,line2)
  Character(lstrLen) regurgitate
    Character(*), Intent(In) :: line
    Character(*), Intent(In), Optional :: line2

    Write(1,*) line

    If (Present(line2)) Then
      Write(1,*) line2
    End If

    regurgitate = line

  End Function regurgitate

End

Program music

  Use default, Only: strLen, lstrLen
  Use util, Only: regurgitate

  Implicit None

  Character(len=lstrLen) :: line1, line2

  line1 = "This is a line with no comment"

  Write(1,*) "This is a test"
  Write(1,*) line1

  line2 = regurgitate(line1)

  Write(1,*) line2
print *,'pass'

End Program music
