integer i1, i2, i3, i4, i5, i6, i7, i8, i9, i10
common /com1/ n1, n2
common /com2/ n3, n4
common /com3/ n5, n6
common /com4/ n7, n8
common /com5/ n9, n10
common /com6/ n11, n12
common /com7/ n13, n14
common /com8/ n15, n16
common /com9/ n17, n18
common /com10/ n19, n20
!$OMP THREADPRIVATE(com1, com2, com3,com4,com5,com6,com7,com8,com9,com10)
!$OMP THREADPRIVATE(i1, i2, i3,i4,i5,i6,i7,i8,i9,i10)
 print *,"pass"
end
