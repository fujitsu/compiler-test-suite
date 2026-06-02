MODULE m1
 TYPE :: x
   INTEGER ::d=0
 END TYPE
  contains
     subroutine s(a,b)
      CLASS(x) :: a,b
    b%d = a%d
  end 
end 

print *,'sngg296h : pass'
end
