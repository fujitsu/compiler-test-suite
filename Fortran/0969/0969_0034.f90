 print *,"pass"
end

subroutine test01()
 use iso_c_binding
 type(c_ptr) :: cc,cc2
 logical  :: l
 cc=cc
 cc2=cc2
 l=c_associated(cc,cc2)
 l=l
end

subroutine test02()
 use ::iso_c_binding,only :c_associated,c_ptr
 type(c_ptr) :: cc,cc2
 logical  :: l
 cc=cc
 cc2=cc2
 l=c_associated(cc,cc2)
 l=l
end

subroutine test03()
 use ,intrinsic::iso_c_binding ,c_associateda=>c_associated,c_ptra=>c_ptr
 type(c_ptra) :: cc,cc2
 logical  :: l
 cc=cc
 cc2=cc2
 l=c_associateda(cc,cc2)
 l=l
end

subroutine test04()
 use ::iso_c_binding,only :c_associated,c_ptr
 interface c_associated
 function ifun()
end function

end interface
 type(c_ptr) :: cc,cc2
 logical  :: l
 cc=cc
 cc2=cc2
 l=c_associated(cc,cc2)
 l=l
end

function ifuna(c_ptr_1,c_ptr_2)
 use ::iso_c_binding,only :c_associated,c_ptr
 type(c_ptr) :: c_ptr_1,c_ptr_2
 c_ptr_1= c_ptr_2
 ifuna=1
end function

subroutine test05()
 use ::iso_c_binding,only :c_associated,c_ptr
 interface c_associated
  function ifun(cc,cc2)
   use ::iso_c_binding,only :c_associated,c_ptr
   type(c_ptr) :: cc
  end function
 end interface
 interface ccc
  function ifuna(c_ptr_1,c_ptr_2)
   use ::iso_c_binding,only :c_associated,c_ptr
   type(c_ptr) :: c_ptr_1,c_ptr_2
  end function
 end interface

 type(c_ptr) :: cc,cc2
 logical  :: l
 cc=cc
 cc2=cc2
 l=c_associated(c_ptr_1=cc,c_ptr_2=cc2)
 i=i
 l=l
end
