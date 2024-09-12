real:: r(2)
complex:: rw(2)=0
complex(8):: rr(2)=0
complex ::cc(2),cx(2)=(1,0),cy(2,2)=(1,0), cz(2,2)
complex(8):: cw(2)=1
logical :: ln=.true.,mm(2)=.true.
r=1
cc=eoshift( cmplx( r ,kind=8),1 )
if (any(cc/=[1,0])) print *,201
if (any(abs(cc- eoshift(cx,1) )>0.00001)) print *,12201
cc=cshift( cmplx( r  )  ,1)
if (any(abs(cc- (cx) )>0.00001)) print *,12202
cc=pack( cmplx( r ,kind=8),.true. )
if (any(cc/=[1,1])) print *,202,cc
if (any(abs(cc- pack(cx,.true.) )>0.00001)) print *,12202
cc=pack( cmplx( r  )  ,ln    )
if (any(abs(cc- (cx) )>0.00001)) print *,12202
cz=spread( cmplx( r ,kind=8),1, 2 )
if (any([cz]/=[1,1,1,1])) print *,202,cz
if (any(abs(cz- spread(cx,1,2  ) )>0.00001)) print *,12202
cz=spread( cmplx( r  )  ,1, 2    )
if (any(abs(cz- (cy) )>0.00001)) print *,12202
cc=unpack( cmplx( r ,kind=8),mm,rr  )
if (any(cc/=[1,1])) print *,202,cc
if (any(abs(cc- unpack(cw,mm,rr ) )>0.00001)) print *,12202
cc=unpack( cmplx( r  )  ,mm,rw    )
if (any(abs(cc- (cx) )>0.00001)) print *,12202
print *,'pass'
end
