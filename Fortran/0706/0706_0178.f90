      call s1
      print *,'pass'
      end
module typedcl
  type drvtyp
    character c
  endtype
endmodule
module typ
  use typedcl,drvtyp1=>drvtyp,d=>drvtyp
end module
module cntentity
  use typedcl,only:type1=>drvtyp,type2=>drvtyp
  use typ,only:type3=>drvtyp1,d
  type(d),parameter,dimension(3 ):: ta = (/type1('1'), type2('2'), type3('3')/)
  type(type1),parameter,dimension(3 ):: tb = (/type2('1'), type3('2'), d('3')/)
  type(type2),parameter,dimension(3 ):: tc = (/type3('1'), d('2'), type1('3')/)
endmodule

subroutine s1
  use cntentity
  character,dimension(3)::vc=ta%c
  character,dimension(3)::vd=tb%c
  character,dimension(3)::ve=tc%c
  character,dimension(3)::vf
  character,dimension(3)::vg
  character,dimension(3)::vh
  character x(3)
  vf=ta%c
  vg=tb%c
  vh=tc%c
  if (any(vf/=(/'1','2','3'/)))print *,'fail'
  if (any(vg/=(/'1','2','3'/)))print *,'fail'
  if (any(vh/=(/'1','2','3'/)))print *,'fail'
  if (any(vc/=(/'1','2','3'/)))print *,'fail'
  if (any(vd/=(/'1','2','3'/)))print *,'fail'
  if (any(ve/=(/'1','2','3'/)))print *,'fail'
  if (any(ta%c/=(/'1','2','3'/)))print *,'fail'
  if (any(tb%c/=(/'1','2','3'/)))print *,'fail'
  if (any(tc%c/=(/'1','2','3'/)))print *,'fail'
  if (ta(1)%c/='1')print *,'fail'
  if (ta(2)%c/='2')print *,'fail'
  if (ta(3)%c/='3')print *,'fail'
  i11=11
  open(i11,delim='quote');write(i11,*)ta;rewind i11;read (i11,*) x
  if (any(x/=(/'1','2','3'/)))print *,'fail'
  i11=12
  open(i11,delim='quote');write(i11,*)tb;rewind i11;read (i11,*) x
  if (any(x/=(/'1','2','3'/)))print *,'fail'
  i11=13
  open(i11,delim='quote');write(i11,*)tc;rewind i11;read (i11,*) x
  if (any(x/=(/'1','2','3'/)))print *,'fail'
end
