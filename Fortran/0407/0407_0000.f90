print *,'pass'
end
subroutine subbb()
      go to 100
      go to 200
select case (1)
case (1)

      if (1.eq.1) then
 100     i=1
 200 endif

400i=1
300end select
end

subroutine subbba()
      go to 10

      if (1.eq.1) then
 10     i=1
 20 endif
      go to 200
if (1.eq.1) then
     if (1.eq.1) then
 100     i=1
 200 endif
endif
end
