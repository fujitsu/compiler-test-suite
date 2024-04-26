associate(aa=>1)
block
  integer::ii
  ii=aa
  associate(ii=>aa+1)
  block
  integer::ii
  if(aa==1)then
  ii=fun1(aa)
  end if
  block
  integer::aa=0
    associate(ii=>ii+1)
    if(ii==7)print*,"1:pass"
    aa=aa+1
    end associate
  end block
  end block
  end associate
  if(aa==1)print*,"2:pass"
  if(ii==1)print*,"3:pass"
end block
end associate
block
integer::ii=0
  associate(aa=>ii+1)
  if(aa==1)then
    ii=ii+fun1(ii)
  end if
  end associate
  if(ii==5)print*,"4:pass"
end block
contains
integer function fun1(d1)
integer::d1
associate(d1=>d1+1)
fun1=d1+KIND(d1)
end associate
end function
end
