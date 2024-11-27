integer::a
  do concurrent (ii=1:5)
do concurrent(integer*4::ii=1:5)
        a=ii+1
  end do
end do

print*,a
end 
