integer::i,j
i=1
j=i+999
call sub(i,j)
end
subroutine sub(i,j)
integer::i,s,m,n,o
s=0
do while (i<=j)
s=s+i
i=i+1
end do
if ( s == 500500 ) then
  print *,'pass'
else
  print *,s
endif
end subroutine
