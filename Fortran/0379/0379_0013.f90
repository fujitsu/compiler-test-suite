subroutine sub()
  enum,bind(C)
    enumerator :: iii = 10
  end enum
  call subsub()
  contains
  subroutine subsub()
    integer :: aaa(iii)
    if ( size(aaa) .ne. 10) print *,'err iii'
  end subroutine
end subroutine
call sub()
print *,'ok'
end
