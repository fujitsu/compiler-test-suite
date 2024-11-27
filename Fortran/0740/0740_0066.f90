     call sub()
print *,'pass'
contains
subroutine sub(i)
optional::i
if (present(i))write(6,*) "NG"
end subroutine
end
