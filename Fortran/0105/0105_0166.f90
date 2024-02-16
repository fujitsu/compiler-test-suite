subroutine sub(K,NN,DX,HtLap,Y)
complex(8):: DX(NN),HtLap(1:NN,1:NN),Y(NN)
DX(1:K)=DX(1:K)+ MATMUL(HtLap(1:K,1:K),Y(1:K))*(-2.0)
end
parameter(NN=11)
complex(8):: DX(NN),HtLap(1:NN,1:NN),Y(NN)
DX=reshape((/(i,i=101,111)/),(/11/))
Y=reshape((/(i,i=131,141)/),(/11/))
HtLap=reshape((/(i,i=201,321)/),(/11,11/))
K=5
call sub(K,NN,DX,HtLap,Y)
if (any(abs((/DX/)-(/&
-296709._8,-298038._8,-299367._8,-300696._8,-302025._8,106._8,107._8,108._8,109._8,110._8,111._8&
/))>0.01))print *,'error'
print *,'pass'
end

