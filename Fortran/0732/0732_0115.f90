Module CosM
    Interface cos
        Module procedure CosString
    End interface
Contains
    Pure Function CosString (A)
        Character (Len = *), intent (In):: A
        Real:: CosString
    CosString=ichar(a)
    End function CosString
End module CosM

   Elemental function CodEqTxt (Code)
        Use CosM

        Character, intent (In):: code
        Real:: CodEqTxt

        CodEqTxt = cos (Code)
    End function CodEqTxt
interface
   Elemental function CodEqTxt (Code)
        Use CosM

        Character, intent (In):: code
        Real:: CodEqTxt
        Character (Len = 25):: UString

    End function CodEqTxt
end interface
if (abs(CodEqTxt(char(10))-10.)>0.001)write(6,*) "NG"
if (any(abs(CodEqTxt((/char(10),char(11)/))-(/10.,11./))>0.001))write(6,*) "NG"
print *,'pass'
end
