module moda
integer,protected :: aa
data aa/1/
end

use moda
integer bb(10)
do ii=aa,10
bb(ii)=1
enddo
if (ii.ne.11)  then
  print *,aa
  write(6,*) "NG"
 else
  print *,'pass'
 endif
end


