module www
 type sllll
  type(ssssss), pointer :: sllll
 end type sllll
 type ssssss
  type(sllll) :: st(0:1)
 end type ssssss
end module www

 use www
 integer :: id
 type(ssssss), pointer :: ppp
 integer(8) :: temp1
 call sub01(ppp%st(id)%sllll)

end

subroutine sub01(aaa)
end subroutine
