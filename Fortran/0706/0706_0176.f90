      call s1
      print *,'pass'
      end
subroutine s1
implicit character*2(i)
open (2,delim='quote')
call ss2
rewind 2
read(2,*)i1,i2,i3,i4,i5,i6
if (i1/='10')print *,'fail'
if (i2/='30')print *,'fail'
if (i3/='50')print *,'fail'
if (i4/='20')print *,'fail'
if (i5/='40')print *,'fail'
if (i6/='60')print *,'fail'
 end
module m1
integer i
contains
  function f10()
  character(i*2),dimension(i)::f10,f20,f30,f40,f50,f60
  f10='10';return
  entry f20()
  f10='20';return
  entry f30()
  f10='30';return
  entry f40()
  f10='40';return
  entry f50()
  f10='50';return
  entry f60()
  f10='60';return
end function
end
subroutine ss2
use m1
character(2),dimension(6)::vect
integer,dimension(2)::shp 
character(2),dimension(2,3)::rshp
i=1
vect=(/f10(),f20(),f30(),f40(),f50(),f60()/)
shp=(/2,3/)
rshp=reshape(vect,shp)
write(2,*) (rshp(i,:),i=1,2)
end
