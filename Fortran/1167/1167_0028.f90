integer::n=2,nn=3
associate( k1=>n)
  block 
    integer::a(k1)
    associate( k2=>nn)
      block 
        integer::b(k2,k1)
        if (size(a)/=2) print *,1001
        if (size(b)/=6) print *,1002
      end block
    end associate
  end block
end associate
print *,'sngg949q : pass'
end
