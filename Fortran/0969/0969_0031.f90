
integer(kind = 4) :: ii04_01, ii04_02, ii04_03

ii04_01 = 100
ii04_02 = 200
ii04_03 = ii04_01

print *,'ii04_01 = ', ii04_01
print *,'ii04_02 = ', ii04_02



!$OMP PARALLEL PRIVATE(ii04_01) REDUCTION(*:ii04_02)


ii04_03 = ii04_03 * 10
ii04_01 = ii04_03
ii04_02 = ii04_02 * 10

print *,'ii04_01 = ', ii04_01
print *,'ii04_02 = ', ii04_02

!$OMP END PARALLEL

print *,'ii04_01 = ', ii04_01
print *,'ii04_02 = ', ii04_02

end
