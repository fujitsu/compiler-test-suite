subroutine sub(a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,b,n)
real(kind=8) tmp0,tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp7,tmp8,tmp9
real(kind=8) s1,s2,s3,s4,s5,t1,t2,t3
real(kind=8),dimension(1:n,1:n) :: a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,b
do j=1,n
  do i=1,n
    tmp0 = a0(i,j)
    tmp1 = a1(i,j)
    tmp2 = a2(i,j)
    tmp3 = a3(i,j)
    tmp4 = a4(i,j)
    tmp5 = a5(i,j)
    tmp6 = a6(i,j)
    tmp7 = a7(i,j)
    tmp8 = a8(i,j)
    tmp9 = a9(i,j)
    s1 = tmp0 + tmp1
    s2 = tmp2 + tmp3
    s3 = tmp4 + tmp5
    s4 = tmp6 + tmp7
    s5 = tmp8 + tmp9
    t1 = s1 + s2
    t2 = s3 + s4
    t3 = t1 + t2 + s5 
    b(i,j) = t3
  enddo
enddo
end subroutine

program main
integer,parameter::n=1500
real(kind=8),dimension(1:n,1:n) :: a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,b
a0=0._8
a1=1._8
a2=2._8
a3=3._8
a4=4._8
a5=5._8
a6=6._8
a7=7._8
a8=8._8
a9=9._8
b=0.1_8
call sub(a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,b,n)
print *,b(10,10)
end program
