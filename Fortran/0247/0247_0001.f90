INTEGER::index_var1=100
INTEGER::index_var2,var1=0
y: DO CONCURRENT (index_var1=10:4:-2,index_var1/=6)
  var1=var1+1
  FORALL(index_var2=6:10:2)
    var1=var1+1
  END FORALL
END DO y
if (var1 == 6) then
print *,'PASS'
end if
END
