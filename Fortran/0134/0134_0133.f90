subroutine s(nn)
integer,target:: n1(nn)
 do n=1,nn
  n1(n)=n
 enddo
 do n=1,nn
  n1(n)=n
 enddo
end
call s(3)
print *,'pass'
end
