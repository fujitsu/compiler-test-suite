integer a

a = 0
do i=1, 100
   if(i.lt.50 .and. a.lt.1000) a = a+i
enddo

if(a .eq. 1035) then
   print *, ': ok'
else
   print *, 'ng'
endif

end
