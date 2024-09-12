  type ty3
     integer::t3_ii1
     integer::t3_ii2 = 10
     integer::t3_ia1(4)
     integer::t3_ia2(3) = 20
     integer::t3_ia3(2) = (/7,8/)
  end type ty3

  type ty2
     integer::t2_ii1
     integer::t2_ii2 = 100
     integer::t2_ia1(4)
     integer::t2_ia2(3) = 200
     integer::t2_ia3(2) = (/77,88/)
     type(ty3)::str_s1
     type(ty3)::str_s2 = ty3(1,2,3,4,5)
     type(ty3)::str_a1(4)
     type(ty3)::str_a2(3) = ty3(1,2,3,4,5)
     type(ty3)::str_a3(2) = (/ty3(6,7,8,9,10),ty3(16,17,18,19,20)/)
  end type ty2

  type ty1
     integer::t1_ii1
     integer::t1_ii2 = 3
     integer::t1_ia1(2)
     integer::t1_ia2(2) = 5 
     integer::t1_ia3(3) = (/1,2,3/)
     type(ty2)::t1_ty1
     type(ty2)::t1_ty2    =   ty2(9,8,7,6,5,ty3(5,4,3,2,1),ty3(7,8,9,1,2),ty3(7,8,9,1,2),ty3(7,8,9,1,2),ty3(7,8,9,1,2))
     type(ty2)::t1_ty3(2) = (/ty2(9,8,7,6,5,ty3(5,4,3,2,1),ty3(7,8,9,1,2),ty3(7,8,9,1,2),ty3(7,8,9,1,2),ty3(7,8,9,1,2)), &
                              ty2(9,8,7,6,5,ty3(5,4,3,2,1),ty3(7,8,9,1,2),ty3(7,8,9,1,2),ty3(7,8,9,1,2),ty3(7,8,9,1,2))/)
  end type ty1

  type(ty1)::aa
  type(ty1)::bb
  type(ty1)::cc(2)

  print *, aa%t1_ii2
  print *, aa%t1_ty3(2)%str_a3(2)%t3_ia3(2)
  print *, bb%t1_ii2
  print *, bb%t1_ty3(2)%str_a3(2)%t3_ia3(2)
  print *, cc(2)%t1_ii2
  print *, cc(2)%t1_ty3(2)%str_a3(2)%t3_ia3(2)
  print *, cc(2)%t1_ty3(2)
end
