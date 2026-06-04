MODULE m1
 TYPE :: x
   INTEGER ::d=0
 END TYPE
 interface
    module subroutine s(a)
      CLASS(x) :: a
    END 
 end interface
END 

submodule(m1)smod
contains
    module subroutine s(a)
      CLASS(x) :: a
  type(x)::r
    r%d = a%d
  END 
end 

print *,'sngg295h : pass'
end
