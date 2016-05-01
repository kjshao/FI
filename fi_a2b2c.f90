subroutine fi_a2b2c(r,p)
! compute the fundamental invariants
! atom order : A A B B C
! r (input) real(kind=8) the internuclear distances
! p (output) real(kind=8) the fundamental invariants
implicit none
real(kind=8),intent(in) :: r(10)
real(kind=8),intent(out) :: p(16)
p(1)=r(2)+r(3)+r(5)+r(6) 
p(2)=r(4)+r(7) 
p(3)=r(9)+r(10) 
p(4)=r(2)**2+r(3)**2+r(5)**2+r(6)**2 
p(5)=r(4)**2+r(7)**2 
p(6)=r(9)**2+r(10)**2 
p(7)=r(2)*r(3)+r(5)*r(6) 
p(8)=r(2)*r(4)+r(3)*r(4)+r(5)*r(7)+r(6)*r(7) 
p(9)=r(2)*r(5)+r(3)*r(6) 
p(10)=r(2)*r(9)+r(3)*r(10)+r(5)*r(9)+r(6)*r(10) 
p(11)=r(2)**3+r(3)**3+r(5)**3+r(6)**3 
p(12)=r(2)**2*r(4)+r(3)**2*r(4)+r(5)**2*r(7)+r(6)**2*r(7) 
p(13)=r(2)**2*r(9)+r(3)**2*r(10)+r(5)**2*r(9)+r(6)**2*r(10) 
p(14)=r(2)*r(4)*r(9)+r(3)*r(4)*r(10)+r(5)*r(7)*r(9)+r(6)*r(7)*r(10) 
p(15)=r(1)
p(16)=r(8)
end subroutine fi_a2b2c
