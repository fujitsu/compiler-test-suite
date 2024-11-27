module m1
  integer:: val=0
  procedure(sub),pointer,protected :: p1
  procedure(sub), pointer, protected :: p2
  contains
  subroutine sub
       val=val+1
  end subroutine
  subroutine ss
       p1=> p2
       p2=>sub
  end subroutine
end
    
 use m1
 call ss
 call p2
 if (val/=1) print *,201
 print *,'Pass'
 end
        

