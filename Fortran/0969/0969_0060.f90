use , intrinsic :: IEEE_ARITHMETIC

integer(kind = 4)            :: ii04_01
integer(kind = 4), parameter :: ii04_pa01 = IEEE_SELECTED_REAL_KIND(1)

ii04_01 = 2
print *,IEEE_SELECTED_REAL_KIND(1)
print *,IEEE_SELECTED_REAL_KIND(ii04_01)

end
