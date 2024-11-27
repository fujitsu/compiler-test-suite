Block
Type t1
Type (t2(2,4)),pointer :: NEXT    
End type

Type t2(k,l)
 Integer,kind :: k
 Integer,len :: l
 Type(t1) :: obj
End type
end block
END

