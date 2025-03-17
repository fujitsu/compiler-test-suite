subroutine sub(K,NN,DX,HtLap,Y,T)
real(8):: DX(NN),HtLap(1:NN,1:NN),Y(NN),T
DX(1:K)=-DX(1:K)+ MATMUL(HtLap(1:K,1:K),Y(1:K))*(-2.0_8)
end
parameter(NN=11)
real(8):: DX(NN),HtLap(1:NN,1:NN),Y(NN),T=-2.0_8
DX=reshape((/(i,i=101,111)/),(/11/))
Y=reshape((/(i,i=131,141)/),(/11/))
HtLap=reshape((/(i,i=201,321)/),(/11,11/))
K=5
call sub(K,NN,DX,HtLap,Y,T)
if (any(abs((/DX/)-(/&
-296911._8,-298242._8,-299573._8,-300904._8,-302235._8,106._8,107._8,108._8,109._8,110._8,111._8&
/))>0.01))print *,'error'
print *,'pass'
end
