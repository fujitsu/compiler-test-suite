     call sub()
print *,'pass'
contains
subroutine sub(i)
optional::i
call sub1(i)
end subroutine
subroutine sub1(i)
optional::i
if (present(i))write(6,*) "NG"
end subroutine
end
