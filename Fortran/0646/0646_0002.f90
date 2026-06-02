module typedcl
  type drvtyp
    integer     i
    character*3 c
    logical     l
  endtype
endmodule

module cntentity
  use typedcl,only:type1=>drvtyp,type2=>drvtyp
  integer,parameter,dimension(10) :: ia = (/1,2,3,4,5,6,7,8,9,10/)
  character*3,parameter,dimension(10):: ca = (/'111','222','333','444','555',&
                                               '666','777','888','999','000'/)
  logical,parameter,dimension(10) :: la = (/(.true.,.false.,i=1,5)/)
  type(type1),parameter,dimension(10):: ta = (/type1(1,'111',.true.),&
                                               type2(2,'222',.false.),&
                                               type1(3,'333',.true.),&
                                               type2(4,'444',.false.),&
                                               type1(5,'555',.true.),&
                                               type2(6,'666',.false.),&
                                               type1(7,'777',.true.),&
                                               type2(8,'888',.false.),&
                                               type1(9,'999',.true.),&
                                               type2(10,'000',.false.)/)
endmodule

module eqextend
  use typedcl
  interface operator(.eq.)
    moduleprocedure eqtype,eqlogi
  endinterface
  contains
  logical function eqtype(a1,a2)
  type(drvtyp) :: a1,a2
  intent(in) a1,a2
  dimension a1(10),a2(10),eqtype(10)
  eqtype = .true. 
  where (a1%i /= a2%i) eqtype = .false.
  where (a1%c /= a2%c) eqtype = .false.
  where (a1%l .neqv. a2%l) eqtype = .false.
  endfunction
  logical function eqlogi(a1,a2)
  logical a1,a2
  intent(in) a1,a2
  dimension a1(10),a2(10),eqlogi(10)
  eqlogi = .true. 
  where (a1 .neqv. a2) eqlogi = .false.
  endfunction
endmodule

program main
  use cntentity
  use eqextend
  integer,dimension(10):: va=(/1,2,3,4,5,6,7,8,9,10/)
  character*3,dimension(10)::vc=ta%c
  logical,dimension(10) :: vl = (/(.true.,.false.,i=1,5)/)
  if (.not.all(ia .eq. ia(ia))) print *,'fail'
  if (.not.all(ia .eq. ia(ta%i))) print *,'fail'
  if (.not.all(ia .eq. ta%i)) print *,'fail'
  if (.not.all(ia(ia) .eq. ta%i)) print *,'fail'
  if (.not.all(ia .eq. ta(ia)%i)) print *,'fail'
  if (.not.all(ia .eq. ta(ta%i)%i)) print *,'fail'
  if (.not.all(ia(ia) .eq. ta(ia)%i)) print *,'fail'
  if (.not.all(ia .eq. va)) print *,'fail'
  if (.not.all(ia(va) .eq. va(ia))) print *,'fail'
  if (.not.all(ia(va) .eq. va(ta%i))) print *,'fail'
  if (.not.all(ia(va) .eq. va(va))) print *,'fail'
  if (.not.all(va(va) .eq. ta(va)%i)) print *,'fail'

  if (.not.all(ca .eq. ca(ia))) print *,'fail'
  if (.not.all(ca(ta%i) .eq. ta%c)) print *,'fail'
  if (.not.all(ca(ia) .eq. ta%c)) print *,'fail'
  if (.not.all(ca .eq. ta%c)) print *,'fail'
  if (.not.all(ca(va) .eq. ta(ta%i)%c)) print *,'fail'
  if (.not.all(ca(va) .eq. ta(va)%c)) print *,'fail'
  if (.not.all(ca(ia) .eq. ta(va)%c)) print *,'fail'
  if (.not.all(ca(ia) .eq. ta(ia)%c)) print *,'fail'
  if (.not.all(vc(ia) .eq. ta(ia)%c)) print *,'fail'
  if (.not.all(vc(ta%i) .eq. ta(ta%i)%c)) print *,'fail'
  if (.not.all(vc(va) .eq. ta%c)) print *,'fail'

  if (.not.all(la .eq. ta%l)) print *,'fail'
  if (.not.all(la(ia) .eq. ta%l)) print *,'fail'
  if (.not.all(la(va) .eq. ta(ia)%l)) print *,'fail'
  if (.not.all(la(ta%i) .eq. ta(va)%l)) print *,'fail'
  if (.not.all(la .eq. ta(ta%i)%l)) print *,'fail'
  if (.not.all(vl .eq. la)) print *,'fail'
  if (.not.all(vl .eq. ta%l)) print *,'fail'
  if (.not.all(vl(va) .eq. ta(va)%l)) print *,'fail'
  if (.not.all(vl(ia) .eq. ta(ia)%l)) print *,'fail'
  if (.not.all(vl(ia) .eq. ta(va)%l)) print *,'fail'
  if (.not.all(vl(ta%i) .eq. ta(va)%l)) print *,'fail'
  if (.not.all(vl(ta%i) .eq. ta(ta%i)%l)) print *,'fail'
  if (.not.all(vl(ia) .eq. ta(ta%i)%l)) print *,'fail'

  if (.not.all(ta .eq. ta)) print *,'fail'
  if (.not.all(ta(ia) .eq. ta(ia))) print *,'fail'
  if (.not.all(ta(va) .eq. ta(va))) print *,'fail'
  if (.not.all(ta(va) .eq. ta(ia))) print *,'fail'
  if (.not.all(ta(ia) .eq. ta(va))) print *,'fail'
  if (.not.all(ta(ta%i) .eq. ta(ta%i))) print *,'fail'
  if (.not.all(ta(ia) .eq. ta(ta%i))) print *,'fail'
  if (.not.all(ta(va) .eq. ta(ta%i))) print *,'fail'
  if (.not.all(ta(ta%i) .eq. ta(ia))) print *,'fail'
  if (.not.all(ta(ta%i) .eq. ta(va))) print *,'fail'
  if (.not.all(ta(ia) .eq. ta)) print *,'fail'
  if (.not.all(ta(va) .eq. ta)) print *,'fail'
  if (.not.all(ta(ta%i) .eq. ta)) print *,'fail'
  if (.not.all(ta .eq. ta(ia))) print *,'fail'
  if (.not.all(ta .eq. ta(va))) print *,'fail'
  if (.not.all(ta .eq. ta(ta%i))) print *,'fail'
  
  print *,'*** pass ***'
end program

