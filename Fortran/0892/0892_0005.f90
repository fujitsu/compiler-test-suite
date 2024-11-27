block
integer::ii=2
Interface
Integer Function fun(dmy)
integer :: dmy
end Function
end Interface
endblock
print*,fun(ii)
endprogram
Integer Function fun(dmy)
integer::dmy
fun =dmy
end Function

