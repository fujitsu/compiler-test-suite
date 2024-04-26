call aaaaa
print *,'pass'
end
subroutine aaaaa
integer(kind=1)::i1(10,10)

if(any(shape(i1,1)/=(/10_1,10_1/))) call errtra

end
