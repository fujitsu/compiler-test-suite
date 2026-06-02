call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test01()
interface operator(.sss.)
 function ifun14(i,j)
  integer,intent(in) :: i
  logical,intent(in) :: j
 end function
 function ifun04(j)
  logical,intent(in) :: j
  logical ifun04
 end function
end interface
logical k
k=.false..xor..sss..true..and..true.
if (k.neqv..false.) print *,'fail'
k=.false..xor..sss..true..or..true.
if (k.neqv..true.) print *,'fail'
k=.false..xor..sss..true..eqv..true.
if (k.neqv..false.) print *,'fail'
k=.false..xor..sss..true..neqv..true.
if (k.neqv..true.) print *,'fail'

k=.false..xor..sss..true..and..false.
if (k.neqv..false.) print *,'fail'
k=.false..xor..sss..true..or..false.
if (k.neqv..false.) print *,'fail'
k=.false..xor..sss..true..eqv..false.
if (k.neqv..true.) print *,'fail'
k=.false..xor..sss..true..neqv..false.
if (k.neqv..false.) print *,'fail'

k=.false..xor..sss..false..and..true.
if (k.neqv..true.) print *,'fail'
k=.false..xor..sss..false..or..true.
if (k.neqv..true.) print *,'fail'
k=.false..xor..sss..false..eqv..true.
if (k.neqv..true.) print *,'fail'
k=.false..xor..sss..false..neqv..true.
if (k.neqv..false.) print *,'fail'

k=.false..xor..sss..false..and..false.
if (k.neqv..false.) print *,'fail'
k=.false..xor..sss..false..or..false.
if (k.neqv..true.) print *,'fail'
k=.false..xor..sss..false..eqv..false.
if (k.neqv..false.) print *,'fail'
k=.false..xor..sss..false..neqv..false.
if (k.neqv..true.) print *,'fail'
end subroutine
 function ifun04(j)
  logical,intent(in) :: j
  logical ifun04
  ifun04=.not.j
 end function

subroutine test02()
interface operator(.sss.)
 function ifun14(i,j)
  integer,intent(in) :: i
  logical,intent(in) :: j
 end function
 function ifun04(j)
  logical,intent(in) :: j
  logical ifun04
 end function
end interface
logical k
k=.false..neqv..sss..true..and..true.
if (k.neqv..false.) print *,'fail'
k=.false..neqv..sss..true..or..true.
if (k.neqv..true.) print *,'fail'
k=.false..neqv..sss..true..eqv..true.
if (k.neqv..false.) print *,'fail'
k=.false..neqv..sss..true..neqv..true.
if (k.neqv..true.) print *,'fail'

k=.false..neqv..sss..true..and..false.
if (k.neqv..false.) print *,'fail'
k=.false..neqv..sss..true..or..false.
if (k.neqv..false.) print *,'fail'
k=.false..neqv..sss..true..eqv..false.
if (k.neqv..true.) print *,'fail'
k=.false..neqv..sss..true..neqv..false.
if (k.neqv..false.) print *,'fail'

k=.false..neqv..sss..false..and..true.
if (k.neqv..true.) print *,'fail'
k=.false..neqv..sss..false..or..true.
if (k.neqv..true.) print *,'fail'
k=.false..neqv..sss..false..eqv..true.
if (k.neqv..true.) print *,'fail'
k=.false..neqv..sss..false..neqv..true.
if (k.neqv..false.) print *,'fail'

k=.false..neqv..sss..false..and..false.
if (k.neqv..false.) print *,'fail'
k=.false..neqv..sss..false..or..false.
if (k.neqv..true.) print *,'fail'
k=.false..neqv..sss..false..eqv..false.
if (k.neqv..false.) print *,'fail'
k=.false..neqv..sss..false..neqv..false.
if (k.neqv..true.) print *,'fail'
end subroutine

 function ifun34(i,j)
  logical,intent(in) :: i
  logical,intent(in) :: j
  logical ifun34
  ifun34=i.neqv.j
 end function
subroutine test03()
interface operator(.sss.)
 function ifun14(i,j)
  integer,intent(in) :: i
  logical,intent(in) :: j
 end function
 function ifun04(j)
  logical,intent(in) :: j
  logical ifun04
 end function
end interface
interface operator(.eor.)
 function ifun34(i,j)
  logical,intent(in) :: i
  logical,intent(in) :: j
  logical ifun34
 end function
end interface
logical k
k=.false..eor..sss..true..and..true.
if (k.neqv..false.) print *,'fail'
k=.false..eor..sss..true..or..true.
if (k.neqv..true.) print *,'fail'
k=.false..eor..sss..true..eqv..true.
if (k.neqv..false.) print *,'fail'
k=.false..eor..sss..true..neqv..true.
if (k.neqv..true.) print *,'fail'

k=.false..eor..sss..true..and..false.
if (k.neqv..false.) print *,'fail'
k=.false..eor..sss..true..or..false.
if (k.neqv..false.) print *,'fail'
k=.false..eor..sss..true..eqv..false.
if (k.neqv..true.) print *,'fail'
k=.false..eor..sss..true..neqv..false.
if (k.neqv..false.) print *,'fail'

k=.false..eor..sss..false..and..true.
if (k.neqv..true.) print *,'fail'
k=.false..eor..sss..false..or..true.
if (k.neqv..true.) print *,'fail'
k=.false..eor..sss..false..eqv..true.
if (k.neqv..true.) print *,'fail'
k=.false..eor..sss..false..neqv..true.
if (k.neqv..false.) print *,'fail'

k=.false..eor..sss..false..and..false.
if (k.neqv..false.) print *,'fail'
k=.false..eor..sss..false..or..false.
if (k.neqv..true.) print *,'fail'
k=.false..eor..sss..false..eqv..false.
if (k.neqv..false.) print *,'fail'
k=.false..eor..sss..false..neqv..false.
if (k.neqv..true.) print *,'fail'
end subroutine
