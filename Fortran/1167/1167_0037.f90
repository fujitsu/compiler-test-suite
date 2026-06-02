     integer::kk(2)=[1,2]
     type ty
       integer::x1(2)
     end type
     type(ty),allocatable  :: z1(:)
     type (ty) :: y1(2)

     allocate(z1(2))
     y1=ty( kk )
     z1=y1
     if(size(z1) /= 2) print*,"121"
     associate(p=>z1)
        block
          integer::a(size(p))
          integer::b(size([character(size(p))::'123','4']))
          character(len([character(size(p))::'123','4']))::&
            c(size([character(size(p))::'123','4']))
        if(size(p) /= 2) print*,"122"
        if(size(a) /= 2) print*,"123"
        if(size(b) /= 2) print*,"124"
        if(size(c) /= 2) print*,"125"
        if(len (c) /= 2) print*,"126"
        if(size([character(size(p))::'123','4']) /= 2) print*,"223"
        if(len ([character(size(p))::'123','4']) /= 2) print*,"223"
        end block
     end associate
     print *,'sngg960q : pass'
    end
