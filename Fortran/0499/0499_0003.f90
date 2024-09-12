    !$OMP PARALLEL DEFAULT(PRIVATE)
i1=1
    !$OMP DO
do ia=1,1
end do
    !$OMP end DO 
    !$OMP end PARALLEL 

    !$OMP PARALLEL DEFAULT(PRIVATE)
vara=1
    !$OMP DO
do iaa=1,1
end do
    !$OMP end DO
    !$OMP end PARALLEL

    !$OMP PARALLEL PRIVATE(iaaaaaaa)
ia=1
    !$OMP DO firstPRIVATE(iaa  )
do iaaaa=1,1
end do
    !$OMP end DO
    !$OMP end PARALLEL

    !$OMP PARALLEL PRIVATE(varxx)
vara=1
    !$OMP DO lastPRIVATE(varaaa)
do iaaaa=1,1
end do
    !$OMP end DO
    !$OMP end PARALLEL
print *,'pass'
end
