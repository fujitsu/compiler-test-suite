recursive subroutine s2(k)
integer,save :: obj4(2,2,2)
DATA obj4/ 8* 11/
if (any(obj4/=11)) print *,1
if (k>5) return
k=k+1
call s2(k)
end subroutine
k=1
call s2(k)
Print*,"pass"
END
