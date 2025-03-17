real(8):: a1(2,2),a2(2,2),a3(2,2),aa3(2,2)
data aa3/23.00000000000000,34.00000000000000,31.00000000000000,46.00000000000000/
a1=reshape((/1,2,3,4/),(/2,2/))
a2=reshape((/5,6,7,8/),(/2,2/))
a3=matmul(a1,a2)
do i1=1,2
  do i2=1,2
    if (a3(i1,i2)/=aa3(i1,i2)) print *,"ng a3=",a3
  end do
end do
print *,"pass"
end
