subroutine s0
  character(5) :: array(3)
  logical,parameter::a01=is_contiguous(array)
  logical,parameter::a02=is_contiguous(array(:)) 
  logical,parameter::a03=is_contiguous(array(:)(:))
  logical,parameter::a04=is_contiguous(array(:)(1:5))
  logical,parameter::a05=is_contiguous(array(:)(:5))
  logical,parameter::a06=is_contiguous(array(:)(1:))
  logical,parameter::a07=is_contiguous(array(1:))
  logical,parameter::a08=is_contiguous(array(1:)(:))
  logical,parameter::a09=is_contiguous(array(1:)(1:5))
  logical,parameter::a10=is_contiguous(array(1:)(:5))
  logical,parameter::a11=is_contiguous(array(1:)(1:))
  logical,parameter::a12=is_contiguous(array(:3))
  logical,parameter::a13=is_contiguous(array(:3)(:))
  logical,parameter::a14=is_contiguous(array(:3)(1:5))
  logical,parameter::a15=is_contiguous(array(:3)(:5))
  logical,parameter::a16=is_contiguous(array(:3)(1:))
  logical,parameter::a17=is_contiguous(array(1:3))
  logical,parameter::a18=is_contiguous(array(1:3)(:))
  logical,parameter::a19=is_contiguous(array(1:3)(1:5))
  logical,parameter::a20=is_contiguous(array(1:3)(:5))
  logical,parameter::a21=is_contiguous(array(1:3)(1:))
if (.not.a01) print *,2001
if (.not.a02) print *,2002
if (.not.a03) print *,2003
if (.not.a04) print *,2004
if (.not.a05) print *,2005
if (.not.a06) print *,2006
if (.not.a07) print *,2007
if (.not.a08) print *,2008
if (.not.a09) print *,2009
if (.not.a10) print *,2010
if (.not.a11) print *,2011
if (.not.a12) print *,2012
if (.not.a13) print *,2013
if (.not.a14) print *,2014
if (.not.a15) print *,2015
if (.not.a16) print *,2016
if (.not.a17) print *,2017
if (.not.a18) print *,2018
if (.not.a19) print *,2019
if (.not.a20) print *,2020
if (.not.a21) print *,2021
end
subroutine s1
  character(5) :: array(3)
  if (.not.is_contiguous(array)) print *,1001
  if (.not.is_contiguous(array(:))) print *,1002
  if (.not.is_contiguous(array(:)(:))) print *,1003
  if (.not.is_contiguous(array(:)(1:5))) print *,1004
  if (.not.is_contiguous(array(:)(:5))) print *,1005
  if (.not.is_contiguous(array(:)(1:))) print *,1006
  if (.not.is_contiguous(array(1:))) print *,1012
  if (.not.is_contiguous(array(1:)(:))) print *,1013
  if (.not.is_contiguous(array(1:)(1:5))) print *,1014
  if (.not.is_contiguous(array(1:)(:5))) print *,1015
  if (.not.is_contiguous(array(1:)(1:))) print *,1016
  if (.not.is_contiguous(array(:3))) print *,1022
  if (.not.is_contiguous(array(:3)(:))) print *,1023
  if (.not.is_contiguous(array(:3)(1:5))) print *,1024
  if (.not.is_contiguous(array(:3)(:5))) print *,1025
  if (.not.is_contiguous(array(:3)(1:))) print *,1026
  if (.not.is_contiguous(array(1:3))) print *,1032
  if (.not.is_contiguous(array(1:3)(:))) print *,1033
  if (.not.is_contiguous(array(1:3)(1:5))) print *,1034
  if (.not.is_contiguous(array(1:3)(:5))) print *,1035
  if (.not.is_contiguous(array(1:3)(1:))) print *,1036
end
subroutine s2(k1,k3,k5)
  character(5) :: array(3)
  if (.not.is_contiguous(array)) print *,1001
  if (.not.is_contiguous(array(:))) print *,1002
  if (.not.is_contiguous(array(:)(:))) print *,1003
  if (.not.is_contiguous(array(:)(k1:5))) print *,1004
  if (.not.is_contiguous(array(:)(:k5))) print *,1005
  if (.not.is_contiguous(array(:)(k1:))) print *,1006
  if (.not.is_contiguous(array(k1:))) print *,1012
  if (.not.is_contiguous(array(k1:)(:))) print *,1013
  if (.not.is_contiguous(array(k1:)(k1:5))) print *,1014
  if (.not.is_contiguous(array(k1:)(:k5))) print *,1015
  if (.not.is_contiguous(array(k1:)(k1:))) print *,1016
  if (.not.is_contiguous(array(:k3))) print *,1022
  if (.not.is_contiguous(array(:k3)(:))) print *,1023
  if (.not.is_contiguous(array(:k3)(k1:5))) print *,1024
  if (.not.is_contiguous(array(:k3)(:k5))) print *,1025
  if (.not.is_contiguous(array(:k3)(k1:))) print *,1026
  if (.not.is_contiguous(array(k1:3))) print *,1032
  if (.not.is_contiguous(array(k1:3)(:))) print *,1033
  if (.not.is_contiguous(array(k1:3)(k1:5))) print *,1034
  if (.not.is_contiguous(array(k1:3)(:k5))) print *,1035
  if (.not.is_contiguous(array(k1:3)(k1:))) print *,1036
end
call s0
call s1
call s2(1,3,5)
print *,'pass'
end
