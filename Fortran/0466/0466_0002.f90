 function ifun(x,y) bind(c)
 logical(4):: x,y ,kkk,ifun
 entry ifun2(x,y) result(kkk) bind(c)
 value :: y
 ifun=x.or.y
 end
print *,'pass'
end
