    !$OMP PARALLEL DEFAULT(PRIVATE)
i=1
    !$OMP TASKGROUP
do i=1,1
end do
    !$OMP end TASKGROUP
    !$OMP TASKGROUP
do i=1,1
end do
    !$OMP end TASKGROUP
    !$OMP end PARALLEL 

    !$OMP PARALLEL DEFAULT(PRIVATE)
var=1
    !$OMP TASKGROUP
do i=1,1
end do
    !$OMP end TASKGROUP
    !$OMP end PARALLEL

    !$OMP PARALLEL PRIVATE(i)
i=1
    !$OMP TASKGROUP
do i=1,1
end do
    !$OMP end TASKGROUP
    !$OMP end PARALLEL

    !$OMP PARALLEL PRIVATE(var)
var=1
    !$OMP TASKGROUP
do i=1,1
end do
    !$OMP end TASKGROUP
    !$OMP end PARALLEL

end
