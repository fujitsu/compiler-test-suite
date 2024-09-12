  function fun(iii) result (ret) bind(c)
    use,intrinsic :: iso_c_binding
    integer(c_int) :: ret
    integer(c_int),value :: iii
    integer(c_int) :: jjj
    ret = iii
    return
    entry ent(jjj) result (ret) bind(c)
    ret = jjj
  end function

print *,'pass'
end
