subroutine s
integer(2)::k,n,nn,kk
integer(1)::j
parameter (k=1,n=2,j=3)
parameter (kk=1111,nn=2222)
entry ent(nnn)
i=1
if (i/=1)nnn=1
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
