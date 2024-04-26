module m1
  type x1(k1,n1)
    integer,kind::n1=2
    integer,kind::k1=4
    integer(kind=k1):: a1(n1)=[(k,k=1,n1)]
  end type
end
print *,'pass'
end
