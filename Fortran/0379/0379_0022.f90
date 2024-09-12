implicit none
enum,bind(C)
  enumerator :: aaa = 10
end enum
if ( aaa .eq. 10 ) print *,'ok'
end
