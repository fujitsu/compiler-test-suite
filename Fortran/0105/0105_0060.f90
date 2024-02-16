subroutine s1
complex(8)::r81(3),r82(3,4),r83(4,3)
complex(8)::r8(4)
complex(8)::cx=(101,201)
complex(8)::z=(3,4)
r81=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r82=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r8=cx
r8=matmul(r81,r82)+z*r8
if (any(abs((/r8/)-(/&
(-2883.,4183.),(-3207.,4615.),(-3531.,5047.),(-3855.,5479.)&
/))>10.))print *,101
r8=cx
r8=matmul(r81,transpose(r83))+(3,4)*r8
if (any(abs((/r8/)-(/&
(-3225.,4639.),(-3333.,4783.),(-3441.,4927.),(-3549.,5071.)&
/))>10.))print *,201
end
subroutine s2
complex(4)::r81(3),r82(3,4),r83(4,3)
complex(4)::r8(4)
complex(4)::cx=(101,201)
complex(4)::z=(3,4)
r81=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r82=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r8=cx
r8=matmul(r81,r82)+z*r8
if (any(abs((/r8/)-(/&
(-2883.,4183.),(-3207.,4615.),(-3531.,5047.),(-3855.,5479.)&
/))>10.))print *,101
r8=cx
r8=matmul(r81,transpose(r83))+(3,4)*r8
if (any(abs((/r8/)-(/&
(-3225.,4639.),(-3333.,4783.),(-3441.,4927.),(-3549.,5071.)&
/))>10.))print *,201
end
call s1
call s2
print *,'pass'
end
