    character(len=1),target :: chart(3)
  chart=(/'a','b','c'/)
call s1(chart(1:3:2))
if (any(chart/=(/'1','b','2'/)))write(6,*) "NG"
print *,'pass'
contains
subroutine s1(x)
    character(len=*):: x(:)
  write(x,'(a,/,a)') "1" ,'2'
end subroutine

end
