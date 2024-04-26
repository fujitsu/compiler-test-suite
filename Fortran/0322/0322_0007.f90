integer i1, i2, i3, i4
common /com1/ i2
common /com2/ i4
save
!$OMP THREADPRIVATE(i1)
!$OMP THREADPRIVATE(/com1/, i3, /com2/)
    print *,"pass"
end
