end

subroutine sub03()
 type ty01
  procedure(len), pointer, nopass :: tttt
 end type
 type (ty01) :: st01
 i = st01%tttt('test')
end subroutine
