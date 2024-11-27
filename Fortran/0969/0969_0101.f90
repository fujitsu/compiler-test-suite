integer :: i_ar01(1)

i_ar01 = cfunc01()

print *,i_ar01

contains
 function cfunc01() result(crst01)
  integer :: crst01(len_trim('a'))
  crst01 = 1
 end function
end
