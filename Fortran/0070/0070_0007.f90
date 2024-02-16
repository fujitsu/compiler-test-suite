subroutine foo
 common /com/ k1
 k1=1
end
subroutine sub
 common /com/ n1
 n1=2
call foo
if (n1/=1) print *,101
end
call sub
print *,'pass'
end
