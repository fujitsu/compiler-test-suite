subroutine s2
complex(8)::r81(4,3),r82(3)
complex(8)::r8(4)
r81=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/4,3/))/100.
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))/100.
r8=matmul(cos(r81),r82)
if (any(abs((/r8/)-(/&
(0.6077718007936150_8,0.8334805261098177_8),(0.6287065925581989_8,0.8422463714172952_8),(0.6506497954609678_8,0.8513087747305796_8),(0.6736243621956804_8,0.8606617964617561_8)&
/))>.01))print *,2
end
subroutine s21
complex(4)::r81(4,3),r82(3)
complex(4)::r8(4)
r81=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/4,3/))/100.
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))/100.
r8=matmul(cos(r81),r82)
if (any(abs((/r8/)-(/&
(0.6077718007936150_4,0.8334805261098177_4),(0.6287065925581989_4,0.8422463714172952_4),(0.6506497954609678_4,0.8513087747305796_4),(0.6736243621956804_4,0.8606617964617561_4)&
/))>.01))print*,4
end
calls2
calls21
print*,'pass'
end