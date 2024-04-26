      type aaa
        type(ccc),pointer,dimension(:) :: c1
      endtype
      type ccc
        type(aaa),pointer ,dimension(:):: a1
      endtype
      type(aaa),target,dimension(10):: a
      type(ccc),target,dimension(10):: c
      print *,'ok'
      end
