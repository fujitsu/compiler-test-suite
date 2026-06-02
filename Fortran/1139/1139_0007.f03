  module MeterNodeTest
  type MeterNode
    character(:),allocatable::name
    character(16),pointer::name2
    character(16)::name3
  end type
  contains
    subroutine copy(s,d)
    type(MeterNode)::s
    type(MeterNode),allocatable::d
    allocate(d,source=s)
    end subroutine
    subroutine print(s,c)
    type(MeterNode)::s
    character(*)::c
    write(17, '("0x",Z16.16," :",A)') loc(s),c
    write(17, '("0x",Z16.16," :",A,"%name :",A)') loc(s%name), c,s%name
    write(17, '("0x",Z16.16," :",A,"%name2:",A)') loc(s%name2),c,s%name2
    write(17, '("0x",Z16.16," :",A,"%name3:",A)') loc(s%name3),c,s%name3
    end subroutine
  end module

  use MeterNodeTest
  type(MeterNode)::node
  type(MeterNode),allocatable::node2
  character(:),allocatable,target::name0
  name0="SetService"
  node%name="GenSetServe"
  node%name2=>name0
  node%name3="all"
  call copy(node,node2)
  call print(node,"node")
  call print(node2,"node2")
print *,'sngg168k : pass'
  end

