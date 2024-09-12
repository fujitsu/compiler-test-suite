!$pragma c(fun1)
!$pragma c(fun1r)
!$pragma c(fun1s)
!$pragma c(fun1rs)
!$pragma c(fun1t)
!$pragma c(fun1rt)
!$pragma c(fun1st)
!$pragma c(fun1rst)
program main
  !$pragma c(fun11)
  external fun11,fun12,fun13
  !$pragma c(fun12)
  !$pragma c(fun17)
  external fun17,fun18,fun19,fun20
  !$pragma c(fun18)
  !$pragma c(fun21)
  external fun21,fun22,fun23,fun24
  !$pragma c(fun22)
  a = fun1()
  a = fun1r()
  a = fun1s()
  a = fun1rs()
  a = fun1t()
  a = fun1rt()
  a = fun1st()
  a = fun1rst()
  !$pragma c(fun2)
  !$pragma c(fun2r)
  !$pragma c(fun2s)
  !$pragma c(fun2rs)
  !$pragma c(fun2t)
  !$pragma c(fun2rt)
  !$pragma c(fun2st)
  !$pragma c(fun2rst)
  a = fun2()
  a = fun2r()
  a = fun2s()
  a = fun2rs()
  a = fun2t()
  a = fun2rt()
  a = fun2st()
  a = fun2rst()
  a = fun3()
  a = fun3r()
  a = fun3s()
  a = fun3rs()
  a = fun3t()
  a = fun3rt()
  a = fun3st()
  a = fun3rst()
  !$pragma c(fun3,fun3r,fun3s,fun3rs,fun3t,fun3rt,fun3st,fun3rst)
  a = fun4() !$pragma c(fun4)
  a = fun4r() !$pragma c(fun4r)
  a = fun4s() !$pragma c(fun4s)
  a = fun4rs() !$pragma c(fun4rs)
  a = fun4t() !$pragma c(fun4t)
  a = fun4rt() !$pragma c(fun4rt)
  a = fun4st() !$pragma c(fun4st)
  a = fun4rst() !$pragma c(fun4rst)
  a = &
  !$pragma c(fun6)
       & fun6()
  a = &
  !$pragma c(fun6r)
       & fun6r()
  a = &
  !$pragma c(fun6s)
       & fun6s()
  a = &
  !$pragma c(fun6rs)
       & fun6rs()
  a = &
  !$pragma c(fun6t)
       & fun6t()
  a = &
  !$pragma c(fun6rt)
       & fun6rt()
  a = &
  !$pragma c(fun6st)
       & fun6st()
  a = &
  !$pragma c(fun6rst)
       & fun6rst()
  a = fun7() !$pragma c(fun7)
  a = fun7s() !$pragma c(fun7s)
  a = fun7t() !$pragma c(fun7t)
  a = fun7st() !$pragma c(fun7st)
  a = fun8() !$pragma c(fun8)
  a = fun8s() !$pragma c(fun8s)
  a = fun8t() !$pragma c(fun8t)
  a = fun8st() !$pragma c(fun8st)
  a = fun9r()
  !$pragma c(fun9r)
  a = fun9rs()
  !$pragma c(fun9rs)
  a = fun9rt()
  !$pragma c(fun9rt)
  a = fun9rst()
  !$pragma c(fun9rst),c(fun10)
  a = fun10(fun11)
  a = fun10(fun12)
  a = fun10(fun13)
  !$pragma c(fun13)
  !$pragma c(fun14)
  a = fun14()
  a = fun15()
  !$pragma c(fun15)
  a = fun16()
  a = fun10(fun14)
  a = fun10(fun15)
  a = fun10(fun16)
  !$pragma c(fun16)
  a = fun17()
  a = fun18()
  a = fun19()
  !$pragma c(fun19)
  a = fun20()
  a = fun10(fun17)
  a = fun10(fun18)
  a = fun10(fun19)
  a = fun10(fun20)
  !$pragma c(fun20)
  a = fun10(fun21)
  a = fun10(fun22)
  a = fun10(fun23)
  !$pragma c(fun23)
  a = fun10(fun24)
  a = fun21()
  a = fun22()
  a = fun23()
  a = fun24()
  !$pragma c(fun24)
  print *,'*** pass ***'
end

!$pragma c(fun1)
function fun1()
 fun1 = 0.0
endfunction

!$pragma c(fun1r)
recursive function fun1r()
 fun1r = 0.0
endfunction

!$pragma c(fun1s)
function fun1s() result(res)
 res = 0.0
endfunction

!$pragma c(fun1rs)
recursive function fun1rs() result(res)
 res = 0.0
endfunction

!$pragma c(fun1t)
real function fun1t()
 fun1t = 0.0
endfunction

!$pragma c(fun1rt)
real recursive function fun1rt()
 fun1rt = 0.0
endfunction

!$pragma c(fun1st)
real function fun1st() result(res)
 res = 0.0
endfunction

!$pragma c(fun1rst)
recursive real function fun1rst() result(res)
 res = 0.0
endfunction

!$pragma c(fun2)
function fun2()
 fun2 = 0.0
endfunction

!$pragma c(fun2r)
recursive function fun2r()
 fun2r = 0.0
endfunction

!$pragma c(fun2s)
function fun2s() result(res)
 res = 0.0
endfunction

!$pragma c(fun2rs)
recursive function fun2rs() result(res)
 res = 0.0
endfunction

!$pragma c(fun2t)
real function fun2t()
 fun2t = 0.0
endfunction

!$pragma c(fun2rt)
real recursive function fun2rt()
 fun2rt = 0.0
endfunction

!$pragma c(fun2st)
real function fun2st() result(res)
 res = 0.0
endfunction

!$pragma c(fun2rst)
recursive real function fun2rst() result(res)
 res = 0.0
endfunction

function fun3() !$pragma c(fun3)
 fun3 = 0.0
end function

recursive function fun3r() !$pragma c(fun3r)
 fun3r = 0.0
end function

function fun3s() result(res) !$pragma c(fun3s)
  res = 0.0
end function

recursive function fun3rs() result(res) !$pragma c(fun3rs)
  res = 0.0
end function

real function fun3t() !$pragma c(fun3t)
  fun3t = 0.0
end function

real recursive function fun3rt() !$pragma c(fun3rt)
  fun3rt = 0.0
end function

real function fun3st() result(res) !$pragma c(fun3st)
  res = 0.0
end function

recursive real function fun3rst() result(res) !$pragma c(fun3rst)
  res = 0.0
end function

function fun4()
!$pragma c(fun4)
  fun4 = 0.0
end function

recursive function fun4r()
!$pragma c(fun4r)
  fun4r = 0.0
end function

function fun4s() result(res)
!$pragma c(fun4s)
  res = 0.0
end function

recursive function fun4rs() result(res)
!$pragma c(fun4rs)
  res = 0.0
end function

real function fun4t()
!$pragma c(fun4t)
  fun4t = 0.0
end function

real recursive function fun4rt()
!$pragma c(fun4rt)
  fun4rt = 0.0
end function

real function fun4st() result(res)
!$pragma c(fun4st)
  res = 0.0
end function

recursive real function fun4rst() result(res)
!$pragma c(fun4rst)
  res = 0.0
end function

function fun6() ; !$pragma c(fun6)
  fun6 = 0.0
end function 

recursive function fun6r() ; !$pragma c(fun6r)
  fun6r = 0.0
end function 

function fun6s() result(res) ; !$pragma c(fun6s)
  res = 0.0
end function 

recursive function fun6rs() result(res) ; !$pragma c(fun6rs)
  res = 0.0
end function 

real function fun6t() ; !$pragma c(fun6t)
  fun6t = 0.0
end function 

real recursive function fun6rt() ; !$pragma c(fun6rt)
  fun6rt = 0.0
end function 

real function fun6st() result(res) ; !$pragma c(fun6st)
  res = 0.0
end function 

recursive real function fun6rst() result(res) ; !$pragma c(fun6rst)
  res = 0.0
end function 

!$pragma c(ent3)
function fun7()
  fun7 = 0.0
  return
  entry ent1()
  !$pragma c(ent1)
  ent1 = 0.0
  return
  !$pragma c(ent2)
  entry ent2()
  ent2 = 0.0
  return
  entry ent3()
  ent3 = 0.0
  return
  entry ent4()
  ent4 = 0.0
  return
  entry ent5() !$pragma c(ent5)
  ent5 = 0.0
  return !$pragma c(ent4,fun7)
endfunction 

!$pragma c(ent3s)
function fun7s() result(res)
  res = 0.0
  return
  entry ent1s() result(res)
  !$pragma c(ent1s)
  res = 0.0
  return
  !$pragma c(ent2s)
  entry ent2s() result(res)
  res = 0.0
  return
  entry ent3s() result(res)
  res = 0.0
  return
  entry ent4s() result(res)
  res = 0.0
  return
  entry ent5s() result(res) !$pragma c(ent5s)
  res = 0.0
  return    !$pragma c(ent4s,fun7s)
endfunction 

!$pragma c(ent3t)
real function fun7t()
  real ent1t,ent2t,ent3t,ent4t,ent5t
  fun7t = 0.0
  return
  entry ent1t()
  !$pragma c(ent1t)
  ent1t = 0.0
  return
  !$pragma c(ent2t)
  entry ent2t()
  ent2t = 0.0
  return
  entry ent3t()
  ent3t = 0.0
  return
  entry ent4t()
  ent4t = 0.0
  return
  entry ent5t() !$pragma c(ent5t)
  ent5t = 0.0
  return  !$pragma c(ent4t,fun7t)
endfunction 

!$pragma c(ent3st)
real function fun7st() result(res)
  res = 0.0
  return
  entry ent1st() result(res)
  !$pragma c(ent1st)
  res = 0.0
  return
  !$pragma c(ent2st)
  entry ent2st() result(res)
  res = 0.0
  return
  entry ent3st() result(res)
  res = 0.0
  return
  entry ent4st() result(res)
  res = 0.0
  return
  entry ent5st() result(res) !$pragma c(ent5st)
  res = 0.0
  return  !$pragma c(ent4st,fun7st)
endfunction 

function fun8()        !$pragma c(fun8)
  !$pragma c(ent3)
  external ent3
  external ent4
  !$pragma c(ent4)
  a = ent1() !$pragma c(ent1)
  a = ent2()
  !$pragma c(ent2)
  a = ent3()
  a = ent4()
  a = ent5() 
  !$pragma c(ent5)
  fun8 = 0.0
endfunction

function fun8s() result(res)        !$pragma c(fun8s)
  !$pragma c(ent3s)
  external ent3s
  external ent4s
  !$pragma c(ent4s)
  a = ent1s() !$pragma c(ent1s)
  a = ent2s()
  !$pragma c(ent2s)
  a = ent3s()
  a = ent4s()
  a = ent5s() 
  !$pragma c(ent5s)
  res = 0.0
endfunction

real function fun8t()        !$pragma c(fun8t)
  !$pragma c(ent3t)
  real ent1t,ent2t,ent3t,ent4t,ent5t
  external ent3t
  external ent4t
  !$pragma c(ent4t)
  a = ent1t() !$pragma c(ent1t)
  a = ent2t()
  !$pragma c(ent2t)
  a = ent3t()
  a = ent4t()
  a = ent5t() 
  !$pragma c(ent5t)
  fun8t = 0.0
endfunction

real function fun8st() result(res)        !$pragma c(fun8st)
  !$pragma c(ent3st)
  external ent3st
  external ent4st
  real ent1st,ent2st,ent3st,ent4st,ent5st
  !$pragma c(ent4st)
  a = ent1st() !$pragma c(ent1st)
  a = ent2st()
  !$pragma c(ent2st)
  a = ent3st()
  a = ent4st()
  a = ent5st() 
  !$pragma c(ent5st)
  res = 0.0
endfunction

recursive function fun9r()
  !$pragma c(fun9r),c(ent6r),c(ent9r)
  a = ent6r()
  a = ent7r() !$pragma c(ent7r)
  a = ent8r()
  a = fun10(ent9r)
  a = fun10(ent10r) !$pragma c(ent10r)
  a = fun10(ent11r)
  fun9r = 0.0
  return
  entry ent6r() result(res) ; res = 0.0 ; return 
  entry ent7r() result(res) ; res = 0.0 ; return
  entry ent8r() result(res) ; res = 0.0 ; return !$pragma c(ent8r)
  entry ent9r() result(res) ; res = 0.0 ; return 
  entry ent10r() result(res) ; res = 0.0 ; return
  entry ent11r() result(res) ; res = 0.0 ; return !$pragma c(ent11r)
  !$pragma c(fun10)
endfunction 

recursive function fun9rs() result(res)
  !$pragma c(fun9rs),c(ent6rs),c(ent9rs)
  a = ent6rs()
  a = ent7rs() !$pragma c(ent7rs)
  a = ent8rs()
  a = fun10(ent9rs)
  a = fun10(ent10rs) !$pragma c(ent10rs)
  a = fun10(ent11rs)
  res = 0.0
  return
  entry ent6rs() result(res) ; res = 0.0 ; return 
  entry ent7rs() result(res) ; res = 0.0 ; return
  entry ent8rs() result(res) ; res = 0.0 ; return !$pragma c(ent8rs)
  entry ent9rs() result(res) ; res = 0.0 ; return 
  entry ent10rs() result(res) ; res = 0.0 ; return
  entry ent11rs() result(res) ; res = 0.0 ; return !$pragma c(ent11rs)
  !$pragma c(fun10)
endfunction 

real recursive function fun9rt()
  !$pragma c(fun9rt),c(ent6rt),c(ent9rt)
  a = ent6rt()
  a = ent7rt() !$pragma c(ent7rt)
  a = ent8rt()
  a = fun10(ent9rt)
  a = fun10(ent10rt) !$pragma c(ent10rt)
  a = fun10(ent11rt)
  fun9rt = 0.0 
  return
  entry ent6rt() result(res) ; res = 0.0 ; return 
  entry ent7rt() result(res) ; res = 0.0 ; return
  entry ent8rt() result(res) ; res = 0.0 ; return !$pragma c(ent8rt)
  entry ent9rt() result(res) ; res = 0.0 ; return 
  entry ent10rt() result(res) ; res = 0.0 ; return
  entry ent11rt() result(res) ; res = 0.0 ; return !$pragma c(ent11rt)
  !$pragma c(fun10)
endfunction 

recursive real function fun9rst() result(res)
  !$pragma c(fun9rst),c(ent6rst),c(ent9rst)
  a = ent6rst()
  a = ent7rst() !$pragma c(ent7rst)
  a = ent8rst()
  a = fun10(ent9rst)
  a = fun10(ent10rst) !$pragma c(ent10rst)
  a = fun10(ent11rst)
  res = 0.0 ; return
  entry ent6rst() result(res) ; res = 0.0 ; return 
  entry ent7rst() result(res) ; res = 0.0 ; return
  entry ent8rst() result(res) ; res = 0.0 ; return !$pragma c(ent8rst)
  entry ent9rst() result(res) ; res = 0.0 ; return 
  entry ent10rst() result(res) ; res = 0.0 ; return
  entry ent11rst() result(res) ; res = 0.0 ; return !$pragma c(ent11rst)
  !$pragma c(fun10)
endfunction 

function fun10(dprc)
  !$pragma c(fun10)
  fun10 = dprc()
endfunction

function fun11() !$pragma c(fun11)
  fun11 = 0.0
endfunction

!$pragma c(fun12)
function fun12()
  fun12 = 0.0
endfunction

function fun13()
  !$pragma c(fun13)
  fun13 = 0.0
endfunction

function fun14() !$pragma c(fun14)
  fun14 = 0.0
endfunction

function fun15() ; fun15 = 0.0 !$pragma c(fun15)
endfunction 

 !$pragma c(fun16)
function fun16()
  fun16 = 0.0
endfunction

function fun17()
  fun17 = 0.0
  return  !$pragma c(fun17)
endfunction

function fun18()
  fun18 = 0.0
  continue !$pragma c(fun18)
endfunction

function fun19() !$pragma c(fun19)
  fun19 = 0.0
endfunction

function fun20() !$pragma c(fun20)
  fun20 = 0.0
endfunction

function fun21() !$pragma c(fun21)
  fun21 = 0.0
endfunction

function fun22() !$pragma c(fun22)
  fun22 = 0.0
endfunction

function fun23() !$pragma c(fun23)
  fun23 = 0.0
endfunction

function fun24() !$pragma c(fun24)
  fun24 = 0.0
endfunction
