interface
integer function fun(d1,d2,d3)
integer::d1(4)
character(20)::d2
logical::d3
end function
end interface
integer::arr(4)
character(20)::ch
logical::ll
ll=.true.
arr=25
ch="abcdefg fortran"
if (fun(arr,ch,ll)/=10)print*,101
print*,"Pass"
end
integer function fun(d1,d2,d3)
integer::d1(4)
character(20)::d2
logical::d3,res1
character(8)::res2
open(100,file="fort.105",action="write")
write(100,20)d3,d2,d3,d2,d3,d2
20 FORMAT(*(L2," ",A10," "))
close(100)
open(200,file="fort.105",action="read")
read(200,'(l2,A8)'),res1,res2
close(200)
if (.not.res1)print*,101,d1
if (res2/=" abcdefg")print*,102
fun=10
end function
