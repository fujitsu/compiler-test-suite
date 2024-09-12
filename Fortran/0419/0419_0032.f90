call s("1")
print *,'pass'
contains
subroutine s(i)
character,value::i
procedure(character(len(i)*2)) fun
character(len(i)*2),allocatable:: a1
character(len(i)*2),allocatable:: a2(:)
a1="12345"
a2=["12345"]
a1 = fun()
a2 =[fun()]
if(a1/="ok") print *,'err1'
if(any(a2/=["ok"])) print *,'err2'
end subroutine
end
character(*) function fun()
fun = "ok"
end
