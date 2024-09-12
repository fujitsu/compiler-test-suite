integer,parameter :: jjj = 100
enum, bind(C)
  enumerator :: aaa = jjj
end enum
if (aaa .ne. jjj) print *,'ng aaa'
print *,'ok'
end
