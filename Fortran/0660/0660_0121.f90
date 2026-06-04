call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
call test07()
call test08()
print *,'pass' 
end

subroutine test01()
integer*1 i
parameter (i=-128)
if (i.ne.-128) print *,"fail"
end subroutine
subroutine test02()
integer*2 i
parameter (i=-32768)
if (i.ne.-32768) print *,"fail"
end subroutine
subroutine test03()
integer*4 i
parameter (i=-2147483648)
if (i.ne.-2147483648) print *,"fail"
end subroutine
subroutine test04()
integer*8 i,j,k
parameter (i=z'8000000000000000')
parameter (j=z'8000000000000001')
k= -9223372036854775807_8
k= k-1
if (i.ne.k) print *,"fail"
if (i.ne.j-1) print *,"fail"
end subroutine
subroutine test05()
integer*4 i,j
parameter (i=-2147483647-1)
j=i+1
if (i.ne.j-1) print *,"fail"
end subroutine
subroutine test06()
integer*2 i,j,k
parameter (k=-1)
parameter (j=-32767)
parameter (i=j+k)
kk=i
end subroutine
subroutine test07()
integer*1 i,j,k
parameter (k=-1)
parameter (j=-127)
parameter (i=j+k)
kk=i
end subroutine
subroutine test08()
integer*8 i,j,k,kk
parameter (k=-1)
parameter (j=z'8000000000000001')
parameter (i=j+k)
kk=i
end subroutine
