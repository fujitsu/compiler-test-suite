module mod1
 type ty1
  integer :: i1
 end type
end module

print *,'pass'

end

subroutine sub1()
 use mod1
 type(ty1) :: t1, ta1(1)
 logical   :: l1, la1(1)

 la1 = sub1_c1(ta1,  l1,   l1)
 la1 = sub1_c1(ta1,  la1,  l1)
 la1 = sub1_c1(ta1,  l1,   la1)
 la1 = sub1_c1(ta1,  la1,  la1)

 l1  = sub1_c1(t1,   l1,   l1)
 la1 = sub1_c1(t1,   la1,  l1)
 la1 = sub1_c1(t1,   l1,   la1)
 la1 = sub1_c1(t1,   la1,  la1)

 la1 = sub1_c2(l1,   l1,   ta1)
 la1 = sub1_c2(la1,  l1,   ta1)
 la1 = sub1_c2(l1,   la1,  ta1)
 la1 = sub1_c2(la1,  la1,  ta1)

 l1  = sub1_c2(l1,   l1,   t1)
 la1 = sub1_c2(la1,  l1,   t1)
 la1 = sub1_c2(l1,   la1,  t1)
 la1 = sub1_c2(la1,  la1,  t1)

 contains
  elemental function sub1_c1(t1, l1, l2) result(rst)
   use mod1
   type(ty1),intent(in) :: t1
   logical,intent(in)   :: l1, l2
   logical              :: rst
   rst = l1
   rst = l2
  end function
  elemental function sub1_c2(l1, l2, t1) result(rst)
   use mod1
   logical,intent(in)   :: l1, l2
   type(ty1),intent(in) :: t1
   logical              :: rst
   rst = l1
   rst = l2
  end function
end subroutine

subroutine sub2()
 use mod1
 type(ty1) :: t1, ta1(1)
 logical   :: l1, la1(1)

 la1 = sub2_c1(ta1,  l1,   l1)
 la1 = sub2_c1(ta1,  la1,  l1)
 la1 = sub2_c1(ta1,  l1,   la1)
 la1 = sub2_c1(ta1,  la1,  la1)

 la1 = sub2_c1(t1,   l1,   l1)
 la1 = sub2_c1(t1,   la1,  l1)
 la1 = sub2_c1(t1,   l1,   la1)
 la1 = sub2_c1(t1,   la1,  la1)

 la1 = sub2_c2(l1,   l1,   ta1)
 la1 = sub2_c2(la1,  l1,   ta1)
 la1 = sub2_c2(l1,   la1,  ta1)
 la1 = sub2_c2(la1,  la1,  ta1)

 l1  = sub2_c2(l1,   l1,   t1)
 la1 = sub2_c2(la1,  l1,   t1)
 la1 = sub2_c2(l1,   la1,  t1)
 la1 = sub2_c2(la1,  la1,  t1)

 contains
  elemental function sub2_c1(t1, l1, l2) result(rst)
   use mod1
   type(ty1),intent(in) :: t1
   logical,intent(in)   :: l1, l2
   logical              :: rst
   rst = l1
   rst = l2
  end function
  elemental function sub2_c2(l1, l2, t1) result(rst)
   use mod1
   logical,intent(in)   :: l1, l2
   type(ty1),intent(in) :: t1
   logical              :: rst
   rst = l1
   rst = l2
  end function
end subroutine
