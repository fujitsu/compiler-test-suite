module interface_block
  interface assignment
    moduleprocedure int1,int2,int4,int8
    moduleprocedure ral4,ral8,ral16
    moduleprocedure cpx4,cpx8,cpx16
  endinterface
  contains
  subroutine int1(size_res,array)
    integer(4),intent(inout):: size_res
    integer(1),intent(in)   :: array(1:*)
    size_res = sum(array(1:size_res))
  endsubroutine
  subroutine int2(size_res,array)
    integer(4),intent(inout):: size_res
    integer(2),intent(in)   :: array(1:*)
    size_res = sum(array(1:size_res))
  endsubroutine
  subroutine int4(size_res,array)
    integer(4),intent(inout):: size_res
    integer(4),intent(in)   :: array(1:*)
    size_res = sum(array(1:size_res))
  endsubroutine
  subroutine int8(size_res,array)
    integer(4),intent(inout):: size_res
    integer(8),intent(in)   :: array(1:*)
    size_res = sum(array(1:size_res))
  endsubroutine
  subroutine ral4(size_res,array)
    integer(4),intent(inout):: size_res
    real(4),intent(in)      :: array(1:*)
    size_res = sum(nint(array(1:size_res)))
  endsubroutine
  subroutine ral8(size_res,array)
    integer(4),intent(inout):: size_res
    real(8),intent(in)      :: array(1:*)
    size_res = sum(nint(array(1:size_res)))
  endsubroutine
  subroutine ral16(size_res,array)
    integer(4),intent(inout):: size_res
    real(16),intent(in)     :: array(1:*)
    size_res = sum(nint(array(1:size_res)))
  endsubroutine
  subroutine cpx4(size_res,array)
    integer(4),intent(inout):: size_res
    complex(4),intent(in)   :: array(1:*)
    size_res = sum(nint(real(array(1:size_res),kind(array))))
  endsubroutine
  subroutine cpx8(size_res,array)
    integer(4),intent(inout):: size_res
    complex(8),intent(in)   :: array(1:*)
    size_res = sum(nint(real(array(1:size_res),kind(array))))
  endsubroutine
  subroutine cpx16(size_res,array)
    integer(4),intent(inout):: size_res
    complex(16),intent(in)  :: array(1:*)
    size_res = sum(nint(real(array(1:size_res),kind(array))))
  endsubroutine
endmodule interface_block

program main
  use interface_block

  integer res,arsize
  integer(1) p_int1(2,2),  v_int1(2,2,2,2)
  integer(2) p_int2(3,3,3),v_int2(2,2,2,2,2)
  integer(4) p_int4(100),  v_int4(2,2,2,2,2,2)
  integer(8) p_int8(2,2,2),v_int8(2,2,2,2,2,2,2)
  real(4)    p_ral4(2,2,2),v_ral4(2,2,2,2,2,2,2)
  real(8)    p_ral8(100)  ,v_ral8(2,2,2)
  real(16)   p_ral16(3,3) ,v_ral16(1,1,1,1,1)
  complex(4) p_cpx4(1,6,1),v_cpx4(2,2,1,1,1,1,2)
  complex(8) p_cpx8(6,1,1),v_cpx8(1,1,2,3,4)
  complex(16)p_cpx16(2,6) ,v_cpx16(3,2,3,2)

  parameter (p_int1 =3_1)
  parameter (p_int2 =2_2)
  parameter (p_int4 =1_4)
  parameter (p_int8 =4_8)
  parameter (p_ral4 =2.0e0_4)
  parameter (p_ral8 =3.0e0_8)
  parameter (p_ral16=3.0e0_16)
  parameter (p_cpx4 =(2.0e0_4,1.2645_4))
  parameter (p_cpx8 =(3.0e0_8,1.11526_8))
  parameter (p_cpx16=(3.0e0_16,3.14552_16))

  v_int1 =3_1
  v_int2 =2_2
  v_int4 =1_4
  v_int8 =4_8
  v_ral4 =2.0e0_4
  v_ral8 =3.0e0_8
  v_ral16=3.0e0_16
  v_cpx4 =(2.0e0_4,1.2645_4)
  v_cpx8 =(3.0e0_8,1.11526_8)
  v_cpx16=(3.0e0_16,3.14552_16)

  arsize = size(p_int1) ; res = arsize
  call assignment(res,reshape(p_int1,(/arsize/)))
  if (res /= arsize*p_int1(1,1)) print *,'fail'
  arsize = size(v_int1) ; res = arsize
  call assignment(res,reshape(v_int1,(/arsize/)))
  if (res /= arsize*v_int1(1,1,1,1)) print *,'fail'

  arsize = size(p_int2) ; res = arsize
  call assignment(res,reshape(p_int2,(/arsize/)))
  if (res /= arsize*p_int2(1,1,1)) print *,'fail'
  arsize = size(v_int2) ; res = arsize
  call assignment(res,reshape(v_int2,(/arsize/)))
  if (res /= arsize*v_int2(1,1,1,1,1)) print *,'fail'

  arsize = size(p_int4) ; res = arsize
  call assignment(res,reshape(p_int4,(/arsize/)))
  if (res /= arsize*p_int4(1)) print *,'fail'
  arsize = size(v_int4) ; res = arsize
  call assignment(res,reshape(v_int4,(/arsize/)))
  if (res /= arsize*v_int4(1,1,1,1,1,1)) print *,'fail'

  arsize = size(p_int8) ; res = arsize
  call assignment(res,reshape(p_int8,(/arsize/)))
  if (res /= arsize*p_int8(1,1,1)) print *,'fail'
  arsize = size(v_int8) ; res = arsize
  call assignment(res,reshape(v_int8,(/arsize/)))
  if (res /= arsize*v_int8(1,1,1,1,1,1,1)) print *,'fail'

  arsize = size(p_ral4) ; res = arsize
  call assignment(res,reshape(p_ral4,(/arsize/)))
  if (res /= arsize*nint(p_ral4(1,1,1))) print *,'fail'
  arsize = size(v_ral4) ; res = arsize
  call assignment(res,reshape(v_ral4,(/arsize/)))
  if (res /= arsize*nint(v_ral4(1,1,1,1,1,1,1))) print *,'fail'

  arsize = size(p_ral8) ; res = arsize
  call assignment(res,reshape(p_ral8,(/arsize/)))
  if (res /= arsize*nint(p_ral8(1))) print *,'fail'
  arsize = size(v_ral8) ; res = arsize
  call assignment(res,reshape(v_ral8,(/arsize/)))
  if (res /= arsize*nint(v_ral8(1,1,1))) print *,'fail'

  arsize = size(p_ral16) ; res = arsize
  call assignment(res, reshape(p_ral16,(/arsize/)))
  if (res /= arsize*nint(p_ral16(1,1))) print *,'fail'
  arsize = size(v_ral16) ; res = arsize
  call assignment(res,reshape(v_ral16,(/arsize/)))
  if (res /= arsize*nint(v_ral16(1,1,1,1,1))) print *,'fail'

  arsize = size(p_cpx4) ; res = arsize
  call assignment(res,reshape(p_cpx4,(/arsize/)))
  if (res /= arsize*nint(real(p_cpx4(1,1,1),kind(p_cpx4)))) print *,'fail'
  arsize = size(v_cpx4) ; res = arsize
  call assignment(res,reshape(v_cpx4,(/arsize/)))
  if (res /= arsize*nint(real(v_cpx4(1,1,1,1,1,1,1),kind(v_cpx4)))) print *,'fail'

  arsize = size(p_cpx8) ; res = arsize
  call assignment(res,reshape(p_cpx8,(/arsize/)))
  if (res /= arsize*nint(real(p_cpx8(1,1,1),kind(p_cpx8)))) print *,'fail'
  arsize = size(v_cpx8) ; res = arsize
  call assignment(res,reshape(v_cpx8,(/arsize/)))
  if (res /= arsize*nint(real(v_cpx8(1,1,1,1,1),kind(v_cpx8)))) print *,'fail'

  arsize = size(p_cpx16) ; res = arsize
  call assignment(res,reshape(p_cpx16,(/arsize/)))
  if (res /= arsize*nint(real(p_cpx16(1,1),kind(p_cpx16)))) print *,'fail'
  arsize = size(v_cpx16) ; res = arsize
  call assignment(res,reshape(v_cpx16,(/arsize/)))
  if (res /= arsize*nint(real(v_cpx16(1,1,1,1),kind(v_cpx16)))) print *,'fail'

  print *,'*** pass ***'
end program


