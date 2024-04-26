call test01()
print *,'pass'
end

module test
 integer,parameter   :: moldim=200
 type t_frag
 integer :: no, dno, atm(moldim), aij( (moldim+1)*moldim/2 )
 endtype t_frag
 type t_child
 integer :: no,atm(15)
 endtype t_child
 type( t_frag ) :: frag(600)
 type( t_child ),allocatable :: child(:)
end module test

subroutine test01()
 use test
end


