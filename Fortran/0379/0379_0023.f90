subroutine sub() bind(C,name='aaa')
  enum,bind(C)
    enumerator :: aaa = 100
  end enum
  if ( aaa .eq. 100 ) print *,'ok'
end subroutine
interface
subroutine sub() bind(C,name='aaa')
end subroutine
end interface
call sub()
end
