integer i1, i2, i3, i4
common /com1/ i2
common /com2/ i4
save
!$OMP THREADPRIVATE(i1)
!$OMP THREADPRIVATE(i3, /com1/, /com2/)
    print *,"pass"
end
