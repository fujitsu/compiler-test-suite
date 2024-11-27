intrinsic new_line
integer ,parameter :: arr(10)=(/1,2,3,4,5,6,7,8,9,10/)
character*20 cha(10)
print *,"pass"
cha="a"
cha=new_line("C")
cha=new_line(cha)
cha=new_line(cha(1))
cha=new_line(cha(1:2))
cha=new_line(cha(:))
cha=new_line(cha(arr))
cha=new_line("C"(1:1))
cha=new_line(cha(1)(1:1))
cha=new_line(cha(1:2)(1:1))
cha=new_line(cha(:)(1:1))
cha=new_line(A=cha(arr)(1:1))
end
