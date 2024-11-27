interface
 subroutine sub(e)
  external :: e
 end subroutine
end interface

intrinsic index

call sub(index)

end

subroutine sub(e)
 external :: e
end subroutine

function e(c1,c2,l,i) result(rst)
 character :: c1, c2
 logical,optional :: l
 integer,optional :: i
 rst = 1
end function
