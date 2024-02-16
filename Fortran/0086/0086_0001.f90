  complex(8)::aaa(2,1)
  complex(8)::bbb(1)
aaa=2
bbb=[3]
call s1(aaa,bbb)
print *,'pass'
contains
subroutine s1(aaa,bbb)
  complex(8)::res(2)
  complex(8)::aaa(:,:)
  complex(8)::bbb(:)
  res = matmul(aaa,bbb)
  if(any(res/=[(6.0_8,0.0_8),(6.0_8,0.0_8)])) print *,'err'
end subroutine s1
end
