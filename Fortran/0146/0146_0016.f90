    subroutine sub02(b,i1,i2,i3,imax2,imin2,isum2,j)
      integer(4),dimension(i1:i2)::b
      integer(8)::imax2,imin2,isum2
      target::b,i1,i2,i3,imax2,imin2,isum2,j
      do j=i1,i2,i3
        isum2=isum2+b(j)
        imax2=max(imax2,b(j))
        imin2=min(imin2,b(j))
      enddo
    end subroutine
print *,'pass'
end
