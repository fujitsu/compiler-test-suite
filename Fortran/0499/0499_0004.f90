    !$OMP PARALLEL
do iii=1,1
ia=1
    !$OMP DOsimd firstPRIVATE(ia  )
do i=1,1
end do
    !$OMP end DO simd
end do
    !$OMP end PARALLEL 

    !$OMP PARALLEL DEFAULT(PRIVATE)
do iii=1,1
vara=1
    !$OMP DO simd
do i=1,1
end do
    !$OMP end DOsimd
end do
    !$OMP end PARALLEL

print *,'pass'
end
