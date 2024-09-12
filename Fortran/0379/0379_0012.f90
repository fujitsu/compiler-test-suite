enum,bind(c)
  enumerator :: aaa
end enum
if (aaa .ne. 0) print *,'err aaa'
call sub()
print *,'ok'
contains
subroutine sub()
  enum,bind(c)
    enumerator :: aaa = 100
  end enum
  if (aaa .ne. 100) print *,'err aaa'
end subroutine
end
