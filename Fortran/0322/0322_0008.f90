integer i1, i2, i3, i4
common /com1/ i2
common /com2/ i4
common /com3/ i5
save
!$OMP THREADPRIVATE(/com1/)
!$OMP THREADPRIVATE(/com2/, i1, i3, /com3/)
    print *,"pass"
end
