program main
  real*16  var, max, min
  print *,"r16 ** i8 power inline TEST START"
  var = 1.2345_16
  call sub_200(var)
  call sub_190(var)
  call sub_180(var)
  call sub_170(var)
  call sub_160(var)
  call sub_150(var)
  call sub_140(var)
  call sub_130(var)
  call sub_120(var)
  call sub_110(var)
  call sub_100(var)
  call sub_090(var)
  call sub_080(var)
  call sub_070(var)
  call sub_060(var)
  call sub_050(var)
  call sub_040(var)
  call sub_030(var)
  call sub_020(var)
  call sub_010(var)
  call sub_000(var)
  call sub_m_010(var)
  call sub_m_020(var)
  call sub_m_030(var)
  call sub_m_040(var)
  call sub_m_050(var)
  call sub_m_060(var)
  call sub_m_070(var)
  call sub_m_080(var)
  call sub_m_090(var)
  call sub_m_100(var)
  call sub_m_110(var)
  call sub_m_120(var)
  call sub_m_130(var)
  call sub_m_140(var)
  call sub_m_150(var)
  call sub_m_160(var)
  call sub_m_170(var)
  call sub_m_180(var)
  call sub_m_190(var)
  call sub_m_200(var)
  max = 1.7976931348623157e+308_16
  call sub_max(max)
  min = 2.2250738585072014e-308_16
  call sub_min(min)
  print *,"r16 ** i8 power inline TEST END"
end program main

logical function equal_check_with_margin(a,b)
  real*16 :: a,b
  equal_check_with_margin = ((abs(a - b)/abs(a)) .gt. 1.0E-5)
end function equal_check_with_margin

subroutine lib_pow(lib_ans, var, pow_count)
  real*16 lib_ans, var
  integer*8 pow_count
  lib_ans = var ** pow_count
end subroutine lib_pow

subroutine sub_200(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = 201_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 201),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 200_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 200),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 199_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 199),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 198_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 198),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 197_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 197),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 196_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 196),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 195_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 195),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 194_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 194),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 193_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 193),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 192_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 192),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 191_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 191),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_200

subroutine sub_190(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = 190_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 190),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 189_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 189),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 188_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 188),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 187_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 187),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 186_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 186),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 185_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 185),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 184_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 184),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 183_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 183),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 182_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 182),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 181_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 181),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_190

subroutine sub_180(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = 180_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 180),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 179_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 179),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 178_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 178),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 177_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 177),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 176_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 176),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 175_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 175),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 174_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 174),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 173_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 173),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 172_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 172),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 171_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 171),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_180

subroutine sub_170(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = 170_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 170),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 169_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 169),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 168_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 168),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 167_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 167),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 166_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 166),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 165_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 165),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 164_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 164),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 163_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 163),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 162_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 162),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 161_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 161),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_170

subroutine sub_160(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = 160_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 160),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 159_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 159),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 158_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 158),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 157_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 157),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 156_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 156),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 155_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 155),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 154_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 154),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 153_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 153),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 152_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 152),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 151_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 151),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_160

subroutine sub_150(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = 150_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 150),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 149_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 149),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 148_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 148),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 147_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 147),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 146_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 146),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 145_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 145),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 144_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 144),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 143_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 143),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 142_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 142),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 141_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 141),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_150

subroutine sub_140(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = 140_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 140),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 139_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 139),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 138_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 138),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 137_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 137),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 136_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 136),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 135_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 135),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 134_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 134),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 133_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 133),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 132_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 132),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 131_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 131),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_140

subroutine sub_130(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = 130_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 130),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 129_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 129),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 128_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 128),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 127_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 127),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 126_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 126),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 125_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 125),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 124_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 124),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 123_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 123),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 122_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 122),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 121_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 121),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_130

subroutine sub_120(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = 120_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 120),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 119_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 119),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 118_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 118),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 117_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 117),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 116_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 116),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 115_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 115),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 114_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 114),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 113_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 113),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 112_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 112),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 111_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 111),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_120

subroutine sub_110(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = 110_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 110),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 109_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 109),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 108_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 108),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 107_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 107),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 106_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 106),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 105_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 105),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 104_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 104),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 103_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 103),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 102_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 102),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 101_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 101),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_110

subroutine sub_100(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = 100_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 100),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 99_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 99),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 98_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 98),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 97_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 97),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 96_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 96),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 95_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 95),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 94_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 94),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 93_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 93),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 92_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 92),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 91_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 91),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_100

subroutine sub_090(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = 90_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 90),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 89_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 89),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 88_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 88),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 87_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 87),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 86_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 86),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 85_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 85),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 84_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 84),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 83_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 83),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 82_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 82),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 81_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 81),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_090

subroutine sub_080(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = 80_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 80),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 79_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 79),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 78_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 78),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 77_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 77),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 76_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 76),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 75_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 75),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 74_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 74),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 73_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 73),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 72_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 72),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 71_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 71),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_080

subroutine sub_070(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = 70_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 70),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 69_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 69),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 68_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 68),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 67_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 67),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 66_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 66),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 65_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 65),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 64_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 64),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 63_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 63),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 62_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 62),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 61_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 61),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_070

subroutine sub_060(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = 60_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 60),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 59_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 59),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 58_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 58),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 57_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 57),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 56_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 56),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 55_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 55),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 54_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 54),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 53_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 53),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 52_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 52),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 51_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 51),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_060

subroutine sub_050(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = 50_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 50),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 49_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 49),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 48_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 48),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 47_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 47),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 46_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 46),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 45_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 45),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 44_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 44),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 43_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 43),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 42_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 42),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 41_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 41),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_050

subroutine sub_040(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = 40_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 40),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 39_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 39),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 38_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 38),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 37_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 37),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 36_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 36),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 35_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 35),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 34_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 34),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 33_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 33),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 32_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 32),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 31_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 31),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_040

subroutine sub_030(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = 30_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 30),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 29_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 29),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 28_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 28),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 27_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 27),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 26_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 26),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 25_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 25),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 24_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 24),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 23_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 23),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 22_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 22),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 21_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 21),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_030

subroutine sub_020(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = 20_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 20),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 19_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 19),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 18_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 18),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 17_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 17),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 16_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 16),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 15_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 15),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 14_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 14),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 13_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 13),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 12_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 12),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 11_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 11),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_020

subroutine sub_010(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = 10_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 10),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 9_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 9),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 8_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 8),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = 7_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 7),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 6_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 6),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 5_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 5),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 4_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 4),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 3_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 3),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 2_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 2),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = 1_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 1),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_010

subroutine sub_000(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin
  
  pow_count = 0_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** 0),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = (-0_8)
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -0),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_000

subroutine sub_m_010(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = -1_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -1),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -2_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -2),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -3_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -3),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -4_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -4),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -5_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -5),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -6_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -6),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -7_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -7),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -8_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -8),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -9_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -9),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -10_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -10),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_m_010

subroutine sub_m_020(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = -11_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -11),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -12_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -12),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -13_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -13),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -14_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -14),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -15_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -15),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -16_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -16),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -17_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -17),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -18_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -18),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -19_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -19),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -20_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -20),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_m_020

subroutine sub_m_030(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = -21_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -21),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -22_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -22),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -23_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -23),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -24_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -24),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -25_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -25),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -26_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -26),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -27_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -27),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -28_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -28),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -29_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -29),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -30_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -30),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_m_030

subroutine sub_m_040(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = -31_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -31),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -32_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -32),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -33_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -33),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -34_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -34),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -35_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -35),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -36_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -36),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -37_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -37),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -38_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -38),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -39_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -39),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -40_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -40),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_m_040

subroutine sub_m_050(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = -41_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -41),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -42_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -42),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -43_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -43),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -44_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -44),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -45_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -45),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -46_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -46),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -47_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -47),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -48_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -48),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -49_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -49),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -50_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -50),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_m_050

subroutine sub_m_060(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = -51_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -51),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -52_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -52),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -53_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -53),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -54_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -54),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -55_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -55),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -56_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -56),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -57_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -57),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -58_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -58),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -59_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -59),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -60_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -60),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_m_060

subroutine sub_m_070(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = -61_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -61),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -62_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -62),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -63_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -63),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -64_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -64),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -65_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -65),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -66_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -66),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -67_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -67),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -68_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -68),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -69_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -69),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -70_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -70),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_m_070

subroutine sub_m_080(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = -71_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -71),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -72_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -72),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -73_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -73),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -74_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -74),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -75_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -75),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -76_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -76),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -77_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -77),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -78_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -78),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -79_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -79),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -80_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -80),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_m_080

subroutine sub_m_090(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = -81_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -81),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -82_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -82),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -83_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -83),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -84_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -84),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -85_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -85),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -86_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -86),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -87_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -87),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -88_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -88),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -89_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -89),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -90_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -90),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_m_090

subroutine sub_m_100(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = -91_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -91),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -92_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -92),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -93_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -93),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -94_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -94),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -95_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -95),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -96_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -96),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -97_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -97),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -98_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -98),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -99_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -99),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -100_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -100),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_m_100

subroutine sub_m_110(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = -101_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -101),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -102_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -102),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -103_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -103),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -104_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -104),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -105_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -105),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -106_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -106),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -107_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -107),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -108_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -108),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -109_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -109),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -110_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -110),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_m_110

subroutine sub_m_120(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = -111_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -111),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -112_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -112),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -113_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -113),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -114_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -114),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -115_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -115),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -116_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -116),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -117_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -117),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -118_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -118),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -119_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -119),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -120_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -120),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_m_120

subroutine sub_m_130(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = -121_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -121),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -122_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -122),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -123_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -123),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -124_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -124),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -125_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -125),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -126_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -126),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -127_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -127),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -128_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -128),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -129_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -129),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -130_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -130),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_m_130

subroutine sub_m_140(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = -131_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -131),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -132_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -132),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -133_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -133),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -134_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -134),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -135_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -135),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -136_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -136),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -137_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -137),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -138_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -138),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -139_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -139),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -140_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -140),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_m_140

subroutine sub_m_150(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = -141_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -141),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -142_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -142),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -143_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -143),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -144_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -144),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -145_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -145),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -146_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -146),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -147_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -147),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -148_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -148),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -149_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -149),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -150_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -150),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_m_150

subroutine sub_m_160(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = -151_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -151),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -152_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -152),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -153_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -153),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -154_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -154),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -155_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -155),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -156_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -156),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -157_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -157),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -158_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -158),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -159_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -159),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -160_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -160),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_m_160

subroutine sub_m_170(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = -161_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -161),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -162_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -162),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -163_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -163),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -164_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -164),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -165_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -165),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -166_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -166),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -167_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -167),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -168_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -168),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -169_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -169),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -170_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -170),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_m_170

subroutine sub_m_180(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = -171_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -171),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -172_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -172),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -173_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -173),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -174_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -174),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -175_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -175),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -176_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -176),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -177_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -177),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -178_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -178),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -179_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -179),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -180_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -180),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_m_180

subroutine sub_m_190(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = -181_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -181),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -182_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -182),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -183_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -183),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -184_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -184),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -185_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -185),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -186_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -186),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -187_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -187),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -188_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -188),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -189_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -189),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -190_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -190),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_m_190

subroutine sub_m_200(var)
  real*16     var, inline_ans, lib_ans
  integer*8  pow_count
  logical :: equal_check_with_margin

  pow_count = -191_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -191),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -192_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -192),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -193_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -193),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
  
  pow_count = -194_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -194),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -195_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -195),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -196_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -196),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -197_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -197),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -198_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -198),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -199_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -199),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -200_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -200),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if

  pow_count = -201_8
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** -201),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_m_200

subroutine sub_max(max)
  real*16 max, inline_ans, lib_ans
  integer*8 pow_count
  logical :: equal_check_with_margin

  pow_count = 2_8
  inline_ans = max ** pow_count
  call lib_pow(lib_ans, max, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** max),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_max

subroutine sub_min(min)
  real*16 min, inline_ans, lib_ans
  integer*8 pow_count
  logical :: equal_check_with_margin

  pow_count = 2_8
  inline_ans = min ** pow_count
  call lib_pow(lib_ans, min, pow_count)
  if (equal_check_with_margin(inline_ans,lib_ans)) then
     print *,"NG (** min),",inline_ans, lib_ans, abs(inline_ans - lib_ans)
  end if
end subroutine sub_min
