subroutine s01(k)
integer a1(max(k,10000))
do nx=1,10
block
integer a2(k,max(k,100000))
call ss(k,loc(a2),loc(a1))
end block
end do
end

call s01(1)
print *,"OK"
end
subroutine ss(n,nn)
integer(8)::n,nn

if (n .eq. nn) then
   print *,"NG"
endif

end
