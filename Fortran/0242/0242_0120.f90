Program main
character(LEN=2), DIMENSION(1:2)::r=min((/"Z", "A"/), (/"YY", "B "/))
character(LEN=2), DIMENSION(1:2)::s
s=min((/"Z", "A"/), (/"YY", "B "/))


do i=1,2
call check(r(i),s(i))
enddo
END

subroutine check(x,y)
character(LEN=2) x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in min value ???'
else
print*," min CALCULATION IS  OK"
endif
end subroutine
