integer :: x,y
call sub(x,y)
if( x==0 .and. y==0) then
  print *,'pass'
else
  print *,'ng'
end if
end

subroutine sub(iostat1,iostat2)
 integer :: a,b
 integer :: iostat1,iostat2
 print *,'a='
 read (*,*,iostat=iostat1) a
 print *,'b='
 read (*,*,iostat=iostat2) b
 if (iostat1==0 .and. iostat2==0) then
   print *,'a+b=',a+b
 end if
end
