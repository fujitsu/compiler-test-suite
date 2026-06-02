     integer::kk(2)=[1,2]
     type ty
       integer::x1(2)
     end type
     type(ty),allocatable  :: z1(:)
     type (ty) :: y1(2)

     allocate(z1(2))
     y1=ty( kk )
     z1=y1
     if(size(z1) .ne. 2) print*,"121"
     associate(p=>z1)
        if(size(p) .ne. 2) print*,"122"
     end associate
     associate(p=>z1)
        block
          integer::a(size(p))
        if(size(p) .ne. 2) print*,"122"
        if(size(a) .ne. 2) print*,"123"
        end block
     end associate
     print *,'sngg959q : pass'
    end
