subroutine fi_a3b(r,p)
! compute the fundamental invariants
! atom order : A A A B
! r (input) real(kind=8) the internuclear distances
! p (output) real(kind=8) the fundamental invariants
implicit none
real(kind=8),intent(in) :: r(6)
real(kind=8),intent(out) :: p(9)
p(1)=r(1)+r(2)+r(4) 
p(2)=r(3)+r(6)+r(5) 
p(3)=r(1)**2+r(2)**2+r(4)**2 
p(4)=r(3)**2+r(6)**2+r(5)**2 
p(5)=r(1)*r(3)+r(2)*r(3)+r(2)*r(6)+r(4)*r(6)+r(4)*r(5)+r(1)*r(5) 
p(6)=r(1)**3+r(2)**3+r(4)**3 
p(7)=r(3)**3+r(6)**3+r(5)**3 
p(8)=r(1)**2*r(3)+r(2)**2*r(3)+r(2)**2*r(6)+r(4)**2*r(6)+r(4)**2*r(5)+r(1)**2*r(5) 
p(9)=r(3)**2*r(4)+r(1)*r(6)**2+r(2)*r(5)**2 
end subroutine fi_a3b
