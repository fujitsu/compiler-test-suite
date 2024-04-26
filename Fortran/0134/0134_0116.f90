subroutine s
integer(2)::nn,kk
parameter (kk=1111,nn=2222)
i=0
select case(i)
case (1)
case (2)
case (3)
i=i+1
end select
end
call s
print *,'pass'
end
