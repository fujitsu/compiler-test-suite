common /com/ i
common /com1/ i1,j1
common /com2/ i2,j2,k2
common /com3/ i3,j3,k3
save
!$OMP THREADPRIVATE(/com/)
!$OMP THREADPRIVATE(/com1/,/com2/,/com3/)
    print *,"pass"
end
