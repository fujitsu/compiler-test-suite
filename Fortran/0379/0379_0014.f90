integer,parameter :: jjj = Z'7fffffff'
enum,bind(C)
  enumerator :: iii = jjj
end enum
if (iii .ne. jjj) print *,'ng iii'
print *,'ok'
end
