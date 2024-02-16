program main
  real*8  var, max, min
  print *,"r8 ** i4 power inline TEST START"
  var = 1.2345_8
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
  max = 1.7976931348623157e+308_8
  call sub_max(max)
  min = 2.2250738585072014e-308_8
  call sub_min(min)
  print *,"r8 ** i4 power inline TEST END"
end program main

subroutine lib_pow(lib_ans, var, pow_count)
  real*8 lib_ans, var
  integer*4 pow_count
  lib_ans = var ** pow_count
end subroutine lib_pow

subroutine sub_200(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = 201_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 201),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 200_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 200),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 199_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 256.0000000000000) then
     print *,"NG (** 199),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 198_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 198),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 197_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 197),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 196_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 196),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 195_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 195),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 194_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 194),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 193_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 193),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 192_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 192),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 191_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 191),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_200

subroutine sub_190(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = 190_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 190),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 189_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 189),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 188_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 188),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 187_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 187),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 186_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 186),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 185_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 185),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 184_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 184),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 183_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 183),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 182_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 182),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 181_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 8.000000000000000) then
     print *,"NG (** 181),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_190

subroutine sub_180(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = 180_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 180),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 179_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 179),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 178_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 178),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 177_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 2.000000000000000) then
     print *,"NG (** 177),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 176_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 176),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 175_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 2.000000000000000) then
     print *,"NG (** 175),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 174_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.000000000000000) then
     print *,"NG (** 174),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 173_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.000000000000000) then
     print *,"NG (** 173),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 172_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.000000000000000) then
     print *,"NG (** 172),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 171_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 171),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_180

subroutine sub_170(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = 170_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 170),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 169_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 0.5000000000000000) then
     print *,"NG (** 169),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 168_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 168),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 167_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 167),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 166_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 166),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 165_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 165),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 164_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 164),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 163_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 163),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 162_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 162),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 161_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 161),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_170

subroutine sub_160(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = 160_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 160),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 159_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 159),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 158_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 158),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 157_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 3.125000000000000E-02) then
     print *,"NG (** 157),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 156_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 156),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 155_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 155),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 154_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 154),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 153_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 153),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 152_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 152),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 151_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 7.812500000000000E-03) then
     print *,"NG (** 151),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_160

subroutine sub_150(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = 150_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 7.812500000000000E-03) then
     print *,"NG (** 150),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 149_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 149),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 148_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 148),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 147_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 3.906250000000000E-03) then
     print *,"NG (** 147),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 146_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 146),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 145_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 145),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 144_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.953125000000000E-03) then
     print *,"NG (** 144),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 143_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.953125000000000E-03) then
     print *,"NG (** 143),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 142_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 142),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 141_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 9.765625000000000E-04) then
     print *,"NG (** 141),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_150

subroutine sub_140(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = 140_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 140),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 139_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 9.765625000000000E-04) then
     print *,"NG (** 139),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 138_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 138),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 137_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 137),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 136_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 136),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 135_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 4.882812500000000E-04) then
     print *,"NG (** 135),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 134_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 134),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 133_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 133),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 132_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 2.441406250000000E-04) then
     print *,"NG (** 132),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 131_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 131),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_140

subroutine sub_130(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = 130_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 130),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 129_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 129),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 128_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 128),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 127_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 6.103515625000000E-05) then
     print *,"NG (** 127),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 126_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 126),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 125_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 3.051757812500000E-05) then
     print *,"NG (** 125),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 124_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 124),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 123_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 123),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 122_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 122),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 121_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 121),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_130

subroutine sub_120(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = 120_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 120),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 119_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.525878906250000E-05) then
     print *,"NG (** 119),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 118_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 7.629394531250000E-06) then
     print *,"NG (** 118),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 117_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 7.629394531250000E-06) then
     print *,"NG (** 117),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 116_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 116),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 115_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 115),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 114_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 114),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 113_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 113),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 112_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 112),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 111_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.907348632812500E-06) then
     print *,"NG (** 111),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_120

subroutine sub_110(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = 110_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.907348632812500E-06) then
     print *,"NG (** 110),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 109_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.907348632812500E-06) then
     print *,"NG (** 109),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 108_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 108),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 107_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 107),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 106_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 106),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 105_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 105),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 104_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 104),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 103_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 103),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 102_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 102),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 101_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 101),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_110

subroutine sub_100(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = 100_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 100),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 99_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 99),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 98_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 98),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 97_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 97),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 96_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 96),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 95_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.192092895507812E-07) then
     print *,"NG (** 95),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 94_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 94),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 93_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 5.960464477539062E-08) then
     print *,"NG (** 93),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 92_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 2.980232238769531E-08) then
     print *,"NG (** 92),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 91_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 91),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_100

subroutine sub_090(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = 90_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 2.980232238769531E-08) then
     print *,"NG (** 90),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 89_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 89),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 88_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 88),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 87_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.490116119384766E-08) then
     print *,"NG (** 87),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 86_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 86),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 85_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 7.450580596923828E-09) then
     print *,"NG (** 85),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 84_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 84),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 83_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 7.450580596923828E-09) then
     print *,"NG (** 83),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 82_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 82),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 81_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 81),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_090

subroutine sub_080(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = 80_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 3.725290298461914E-09) then
     print *,"NG (** 80),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 79_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 79),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 78_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 78),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 77_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.862645149230957E-09) then
     print *,"NG (** 77),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 76_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 76),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 75_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 75),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 74_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 74),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 73_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 73),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 72_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 72),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 71_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 4.656612873077393E-10) then
     print *,"NG (** 71),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_080

subroutine sub_070(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = 70_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 70),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 69_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 69),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 68_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 2.328306436538696E-10) then
     print *,"NG (** 68),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 67_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 67),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 66_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 66),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 65_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 65),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 64_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 64),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 63_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 63),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 62_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 62),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 61_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 5.820766091346741E-11) then
     print *,"NG (** 61),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_070

subroutine sub_060(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = 60_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 60),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 59_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 59),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 58_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 58),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 57_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 57),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 56_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 56),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 55_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.455191522836685E-11) then
     print *,"NG (** 55),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 54_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 54),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 53_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 53),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 52_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 52),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 51_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 51),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_060

subroutine sub_050(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = 50_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 50),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 49_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 49),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 48_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 48),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 47_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 3.637978807091713E-12) then
     print *,"NG (** 47),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 46_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 46),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 45_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.818989403545856E-12) then
     print *,"NG (** 45),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 44_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 44),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 43_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 43),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 42_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 42),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 41_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 41),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_050

subroutine sub_040(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = 40_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 40),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 39_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 4.547473508864641E-13) then
     print *,"NG (** 39),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 38_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 38),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 37_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 37),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 36_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 36),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 35_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 35),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 34_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 34),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 33_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 33),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 32_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 32),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 31_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.136868377216160E-13) then
     print *,"NG (** 31),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_040

subroutine sub_030(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = 30_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 30),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 29_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 29),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 28_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 28),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 27_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 27),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 26_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 26),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 25_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 25),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 24_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 24),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 23_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.421085471520200E-14) then
     print *,"NG (** 23),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 22_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 22),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 21_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 21),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_030

subroutine sub_020(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = 20_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 20),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 19_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 19),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 18_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 18),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 17_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 17),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 16_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 16),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 15_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 15),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 14_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 14),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 13_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 13),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 12_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 12),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 11_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 11),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_020

subroutine sub_010(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = 10_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 10),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 9_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 9),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 8_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 8),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = 7_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 7),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 6_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 6),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 5_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 4.440892098500626E-16) then
     print *,"NG (** 5),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 4_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 4),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 3_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 3),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 2_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 2),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = 1_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 1),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_010

subroutine sub_000(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count
  
  pow_count = 0_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** 0),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = (-0_4)
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -0),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_000

subroutine sub_m_010(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = -1_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -1),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -2_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -2),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -3_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -3),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -4_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -4),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -5_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 5.551115123125783E-17) then
     print *,"NG (** -5),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -6_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -6),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -7_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -7),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -8_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -8),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -9_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -9),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -10_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -10),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_m_010

subroutine sub_m_020(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = -11_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -11),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -12_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -12),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -13_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -13),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -14_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -14),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -15_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -15),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -16_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -16),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -17_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -17),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -18_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -18),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -19_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -19),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -20_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -20),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_m_020

subroutine sub_m_030(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = -21_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -21),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -22_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -22),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -23_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -23),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -24_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -24),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -25_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -25),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -26_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -26),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -27_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -27),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -28_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -28),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -29_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -29),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -30_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -30),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_m_030

subroutine sub_m_040(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = -31_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 2.168404344971009E-19) then
     print *,"NG (** -31),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -32_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -32),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -33_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -33),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -34_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -34),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -35_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -35),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -36_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -36),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -37_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -37),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -38_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -38),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -39_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 5.421010862427522E-20) then
     print *,"NG (** -39),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -40_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -40),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_m_040

subroutine sub_m_050(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = -41_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -41),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -42_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -42),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -43_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -43),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -44_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -44),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -45_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.355252715606881E-20) then
     print *,"NG (** -45),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -46_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -46),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -47_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 6.776263578034403E-21) then
     print *,"NG (** -47),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -48_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -48),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -49_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -49),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -50_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -50),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_m_050

subroutine sub_m_060(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = -51_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -51),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -52_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -52),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -53_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -53),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -54_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -54),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -55_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.694065894508601E-21) then
     print *,"NG (** -55),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -56_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -56),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -57_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -57),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -58_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -58),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -59_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -59),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -60_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -60),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_m_060

subroutine sub_m_070(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = -61_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 4.235164736271502E-22) then
     print *,"NG (** -61),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -62_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -62),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -63_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -63),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -64_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -64),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -65_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -65),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -66_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -66),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -67_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -67),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -68_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -68),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -69_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -69),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -70_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -70),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_m_070

subroutine sub_m_080(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = -71_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 5.293955920339377E-23) then
     print *,"NG (** -71),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -72_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -72),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -73_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -73),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -74_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -74),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -75_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -75),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -76_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -76),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -77_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.323488980084844E-23) then
     print *,"NG (** -77),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -78_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -78),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -79_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -79),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -80_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 6.617444900424221E-24) then
     print *,"NG (** -80),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_m_080

subroutine sub_m_090(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = -81_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -81),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -82_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -82),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -83_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 3.308722450212111E-24) then
     print *,"NG (** -83),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -84_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -84),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -85_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 3.308722450212111E-24) then
     print *,"NG (** -85),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -86_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -86),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -87_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.654361225106055E-24) then
     print *,"NG (** -87),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -88_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -88),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -89_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -89),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -90_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 8.271806125530277E-25) then
     print *,"NG (** -90),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_m_090

subroutine sub_m_100(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = -91_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -91),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -92_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 8.271806125530277E-25) then
     print *,"NG (** -92),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -93_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 4.135903062765138E-25) then
     print *,"NG (** -93),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -94_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -94),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -95_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 4.135903062765138E-25) then
     print *,"NG (** -95),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -96_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -96),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -97_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -97),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -98_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -98),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -99_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -99),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -100_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -100),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_m_100

subroutine sub_m_110(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = -101_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -101),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -102_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -102),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -103_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -103),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -104_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -104),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -105_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -105),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -106_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -106),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -107_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -107),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -108_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -108),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -109_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.292469707114106E-26) then
     print *,"NG (** -109),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -110_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.292469707114106E-26) then
     print *,"NG (** -110),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_m_110

subroutine sub_m_120(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = -111_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.292469707114106E-26) then
     print *,"NG (** -111),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -112_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -112),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -113_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -113),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -114_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -114),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -115_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -115),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -116_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -116),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -117_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 3.231174267785264E-27) then
     print *,"NG (** -117),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -118_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 3.231174267785264E-27) then
     print *,"NG (** -118),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -119_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 3.231174267785264E-27) then
     print *,"NG (** -119),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -120_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -120),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_m_120

subroutine sub_m_130(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = -121_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -121),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -122_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -122),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -123_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -123),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -124_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -124),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -125_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 8.077935669463161E-28) then
     print *,"NG (** -125),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -126_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -126),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -127_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 4.038967834731580E-28) then
     print *,"NG (** -127),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -128_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -128),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -129_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -129),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -130_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -130),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_m_130

subroutine sub_m_140(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = -131_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -131),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -132_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.009741958682895E-28) then
     print *,"NG (** -132),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -133_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -133),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -134_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -134),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -135_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 5.048709793414476E-29) then
     print *,"NG (** -135),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -136_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -136),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -137_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -137),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -138_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -138),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -139_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 2.524354896707238E-29) then
     print *,"NG (** -139),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -140_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -140),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_m_140

subroutine sub_m_150(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = -141_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -141),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -142_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -142),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -143_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.262177448353619E-29) then
     print *,"NG (** -143),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -144_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 1.262177448353619E-29) then
     print *,"NG (** -144),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -145_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -145),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -146_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -146),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -147_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 6.310887241768094E-30) then
     print *,"NG (** -147),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -148_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -148),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -149_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -149),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -150_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -150),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_m_150

subroutine sub_m_160(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = -151_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 3.155443620884047E-30) then
     print *,"NG (** -151),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -152_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -152),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -153_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -153),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -154_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -154),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -155_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -155),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -156_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -156),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -157_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 7.888609052210118E-31) then
     print *,"NG (** -157),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -158_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -158),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -159_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -159),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -160_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -160),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_m_160

subroutine sub_m_170(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = -161_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -161),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -162_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -162),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -163_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -163),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -164_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -164),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -165_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -165),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -166_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -166),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -167_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -167),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -168_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -168),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -169_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 4.930380657631324E-32) then
     print *,"NG (** -169),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -170_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -170),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_m_170

subroutine sub_m_180(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = -171_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -171),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -172_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 2.465190328815662E-32) then
     print *,"NG (** -172),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -173_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 2.465190328815662E-32) then
     print *,"NG (** -173),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -174_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -174),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -175_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 2.465190328815662E-32) then
     print *,"NG (** -175),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -176_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -176),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -177_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -177),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -178_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -178),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -179_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -179),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -180_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -180),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_m_180

subroutine sub_m_190(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = -181_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 6.162975822039155E-33) then
     print *,"NG (** -181),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -182_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -182),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -183_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -183),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -184_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -184),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -185_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -185),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -186_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -186),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -187_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -187),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -188_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -188),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -189_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -189),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -190_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -190),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_m_190

subroutine sub_m_200(var)
  real*8     var, inline_ans, lib_ans
  integer*4  pow_count

  pow_count = -191_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -191),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -192_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -192),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -193_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -193),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
  
  pow_count = -194_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -194),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -195_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -195),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -196_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -196),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -197_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -197),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -198_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -198),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -199_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (dabs(inline_ans - lib_ans) > 9.629649721936179E-35) then
     print *,"NG (** -199),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -200_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -200),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if

  pow_count = -201_4
  inline_ans = var ** pow_count
  call lib_pow(lib_ans, var, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** -201),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_m_200

subroutine sub_max(max)
  real*8 max, inline_ans, lib_ans
  integer*4 pow_count
  pow_count = 2_4
  inline_ans = max ** pow_count
  call lib_pow(lib_ans, max, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** max),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_max

subroutine sub_min(min)
  real*8 min, inline_ans, lib_ans
  integer*4 pow_count
  pow_count = 2_4
  inline_ans = min ** pow_count
  call lib_pow(lib_ans, min, pow_count)
  if (inline_ans /= lib_ans) then
     print *,"NG (** min),",inline_ans, lib_ans, dabs(inline_ans - lib_ans)
  end if
end subroutine sub_min
