 Program teststring
   Character (26) :: U = "ABCDEFGHIJKLMNOPQrstuVWXYZ"
   Integer :: k
   character*100 r

   Write (17, *) U
   Write (17, *) (LowerCase(U(k:k)), k = 1, 26)
   Write (17, *) (letter_index(U(k:k)), k = 1, 26)
   Write (17, *) letter_index(U(7:7))
rewind 17
  read(17,'(a)') r;if (r/=' ABCDEFGHIJKLMNOPQrstuVWXYZ')print *,'error-1'
  read(17,'(a)') r;if (r/=' abcdefghijklmnopqrstuvwxyz')print *,'error-2'
  read(17,'(a)') r;if (r/=' 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 0 0 0 0 22 23 24 25 26')print *,'error-3'
  read(17,'(a)') r;if (r/=' 7')print *,'error-4'

print *,'pass'

 Contains

   Function LowerCase(letter)
     Character (1), Intent (in) :: letter
     Character (1) :: LowerCase
     Character (26), Parameter :: U = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
     Character (26), Parameter :: L = "abcdefghijklmnopqrstuvwxyz"
     Integer :: m
     m = Index(U, letter)
     If (m > 0) Then
       LowerCase = L(m:m)
     Else
       LowerCase = letter
     End If
   End Function LowerCase

   Integer Function letter_index(letter)
     Implicit None
     Character (1), Intent (in) :: letter
     Character (26), Parameter :: U = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
     letter_index = Index(U, letter)
   End Function letter_index

 End Program teststring
