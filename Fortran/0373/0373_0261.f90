LOGICAL(1) G2FB(44:46),A6BH
EQUIVALENCE (G2FB(46),A6BH)
G2FB=(/.FALSE._1,.TRUE._1,.TRUE._1/)
A6BH=.TRUE._1
do i=1,1000
    if(i<0)print*,i
enddo
CALL sub(G2FB(44))
END

subroutine sub(l)
LOGICAL(1)::l
print*,l
end
