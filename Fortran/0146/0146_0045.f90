subroutine s(nn,kk)
integer,target::nn,kk
i=0
select case(i)
case (1)
case (2)
case (3)
i=i+1
end select
end
interface
subroutine s(nn,kk)
integer,target::nn,kk
end subroutine s
end interface
call s(nn,kk)
print *,'pass'
end
