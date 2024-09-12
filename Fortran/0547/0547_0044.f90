subroutine s1(n1,n2,n3,j1,j2,j3)
 integer(8)::k1,n1,n2,n3
 integer(4)::k2,j1,j2,j3
a1=1;a2=2
 do b1=a1,a2
 end do
 do k1=a1,a2
 end do
 do k1=1.0,2.0
 end do
 do k1=1,2
 end do
 do k1=n1,n2,n3
 end do
 do k1=j1,j2,j3
 end do
 do k2=a1,a2
 end do
 do k2=1.0,2.0
 end do
 do k2=1,2
 end do
 do k2=n1,n2,n3
 end do
 do k2=j1,j2,j3
 end do
 return
 do k1=-1000000000,2000000000
 end do
end
call s1(1_8,2_8,1_8,1_4,2_4,1_4)
print *,'pass'
end
