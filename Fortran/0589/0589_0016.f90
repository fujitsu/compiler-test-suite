integer,target :: trg
integer::x=10
trg=100
if (trg /=100) print *,101,trg
fun() = 10 + x
if (trg /=20) print *,102
print *,"Pass"
contains
   function fun()
   integer,pointer :: fun
   fun=> trg
   end function
end

