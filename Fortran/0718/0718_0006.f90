integer(kind=8),parameter :: i8max = Z'7fffffffffffffff'
enum,bind(C)
  enumerator :: ei8max = i8max
end enum
print *,i8max
print *,ei8max
end
