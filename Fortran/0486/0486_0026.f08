do n1=0,100
do n2=0,100
do n3=2,2
write(1,*) n1,n2,n3, selected_real_kind( n1,n2,n3)
end do
end do
end do
print *,'pass'
end
