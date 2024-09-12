call sub1()
call sub2()
print *,"pass"
end
subroutine sub1()
integer(kind=1) :: i1
integer(kind=2) :: i2
integer(kind=4) :: i4
integer(kind=8) :: i8
real(kind=4) :: r4
real(kind=8) :: r8
real(kind=16):: rq

call system_clock(i1)
call system_clock(i2)
call system_clock(i4)
call system_clock(i8)

call system_clock(i1,i1)
call system_clock(i2,i2)
call system_clock(i4,i4)
call system_clock(i8,i8)

call system_clock(i1,i1,i1)
call system_clock(i2,i2,i2)
call system_clock(i4,i4,i4)
call system_clock(i8,i8,i8)

call system_clock(i1,r4,i1)
call system_clock(i2,r8,i2)
call system_clock(i4,rq,i4)

call system_clock(i1,r4)
call system_clock(i2,r8)
call system_clock(i4,rq)

end
subroutine sub2()
integer(kind=1) :: i1
integer(kind=2) :: i2
integer(kind=4) :: i4
integer(kind=8) :: i8
real(kind=4) :: r4
real(kind=8) :: r8
real(kind=16):: rq

call system_clock(count=i1)
call system_clock(count=i2)
call system_clock(count=i4)
call system_clock(count=i8)

call system_clock(count=i1,count_rate=i1)
call system_clock(count=i2,count_rate=i2)
call system_clock(count=i4,count_rate=i4)
call system_clock(count=i8,count_rate=i8)

call system_clock(count=i1,count_rate=i1,count_max=i1)
call system_clock(count=i2,count_rate=i2,count_max=i2)
call system_clock(count=i4,count_rate=i4,count_max=i4)
call system_clock(count=i8,count_rate=i8,count_max=i8)

call system_clock(count=i1,count_rate=r4,count_max=i1)
call system_clock(count=i2,count_rate=r8,count_max=i2)
call system_clock(count=i4,count_rate=rq,count_max=i4)

call system_clock(count_rate=r4,count_max=i1)
call system_clock(count_rate=r8,count_max=i2)
call system_clock(count_rate=rq,count_max=i4)

call system_clock(count_rate=r4)
call system_clock(count_rate=r8)
call system_clock(count_rate=rq)

call system_clock(count_max=i1,count_rate=r4,count=i1)
call system_clock(count_max=i2,count_rate=r8,count=i2)
call system_clock(count_max=i4,count_rate=rq,count=i4)

call system_clock(count=i1,count_max=i1,count_rate=r4)
call system_clock(count=i2,count_max=i2,count_rate=r8)
call system_clock(count=i4,count_max=i4,count_rate=rq)

end
