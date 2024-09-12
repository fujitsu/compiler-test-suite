integer,parameter :: bbb = 80
enum,bind(C)
  enumerator :: aaa = 80
end enum
if ( aaa .eq. bbb) print *,'ok'
end
