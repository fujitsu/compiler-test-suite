integer, pointer :: ii04_pp01(:, :), ii04_pp02(:, :)

allocate(ii04_pp01(4, 2))
ii04_pp01 = reshape((/1,2,3,4,5,6,7,8/), (/4,2/))

ii04_pp02(4:5, 6:7) => ii04_pp01(1:8, 2)
ii04_pp02(4:5, 6:7) => ii04_pp01( : , 2)

print *,ii04_pp02

end
