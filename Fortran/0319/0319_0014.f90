subroutine sub(l)
logical l
dimension ans(1:1),a(10:10)
l=.true.
a(10)=3.5914894263979763d37
do i=1,10
   if ( l ) then
   else
      ans(1) = -127*a(10)
   endif
enddo
end
logical l
l=.true.
call sub( l )
print *,"ok"
stop
end
