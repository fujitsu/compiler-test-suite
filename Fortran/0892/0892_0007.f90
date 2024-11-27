integer::ii=1
block
integer::ii=2
Interface
Integer Function fun(dmy)
integer :: dmy
end Function
end Interface
endblock
block
integer::ii=3
block
print*,fun(ii)
end block
endblock 
endprogram
integer function fun(dmy)
integer :: dmy
fun = dmy
end function

