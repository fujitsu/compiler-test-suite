integer i1, i2, i3, i4
save
!$OMP THREADPRIVATE(i1)
!$OMP THREADPRIVATE(i2, i3, i4)
    print *,"pass"
end
