module m1
 intrinsic ::int
end
module m2
 use m1
 private int
end
 use m2
print *,'pass'
end
