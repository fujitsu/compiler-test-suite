Program main
character(LEN=2), DIMENSION(1:2)::r=MAX((/"Z", "A"/), (/"YY", "B "/))
character(LEN=2), DIMENSION(1:2)::s
s=MAX((/"Z", "A"/), (/"YY", "B "/))


do i=1,2
call check(r(i),s(i))
enddo
END

subroutine check(x,y)
character(LEN=2) x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in max value ???'
else
print*," MAX CALCULATION IS  OK"
endif
end subroutine
