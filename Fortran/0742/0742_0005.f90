subroutine sub(k,i)
integer,intent(out)::i
if (k==1) then
   i=2
   return
endif
if (i==2)then
  print *,'error'
endif
i=3
end
ii=2
call sub(1,ii)
if (ii/=2)write(6,*) "NG"
print *,'pass'
end
