block
integer :: ii
  block
  Interface
  Integer Function fun(dmy)
  integer :: dmy
  end Function
  end Interface
  endblock
ii = fun(2)
endblock
print*,fun(4) 
endprogram
Integer Function fun(dmy)
integer :: dmy
fun = dmy
End function
