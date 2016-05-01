subroutine fi_a3bc(r,p)
! compute the fundamental invariants
! atom order : A A A B C
! r (input) real(kind=8) the internuclear distances
! p (output) real(kind=8) the fundamental invariants
implicit none
real(kind=8),intent(in) :: r(10)
real(kind=8),intent(out) :: p(20)
p(1)=r(1)+r(2)+r(5) 
p(2)=r(3)+r(8)+r(6) 
p(3)=r(4)+r(9)+r(7) 
p(4)=r(1)**2+r(2)**2+r(5)**2 
p(5)=r(3)**2+r(8)**2+r(6)**2 
p(6)=r(4)**2+r(9)**2+r(7)**2 
p(7)=r(1)*r(3)+r(2)*r(3)+r(2)*r(8)+r(5)*r(8)+r(5)*r(6)+r(1)*r(6) 
p(8)=r(1)*r(4)+r(2)*r(4)+r(2)*r(9)+r(5)*r(9)+r(5)*r(7)+r(1)*r(7) 
p(9)=r(3)*r(4)+r(8)*r(9)+r(6)*r(7) 
p(10)=r(1)**3+r(2)**3+r(5)**3 
p(11)=r(3)**3+r(8)**3+r(6)**3 
p(12)=r(4)**3+r(9)**3+r(7)**3 
p(13)=r(1)**2*r(3)+r(2)**2*r(3)+r(2)**2*r(8)+r(5)**2*r(8)+r(5)**2*r(6)+r(1)**2*r(6) 
p(14)=r(1)**2*r(4)+r(2)**2*r(4)+r(2)**2*r(9)+r(5)**2*r(9)+r(5)**2*r(7)+r(1)**2*r(7) 
p(15)=r(3)**2*r(4)+r(8)**2*r(9)+r(6)**2*r(7) 
p(16)=r(3)**2*r(5)+r(1)*r(8)**2+r(2)*r(6)**2 
p(17)=r(4)**2*r(5)+r(1)*r(9)**2+r(2)*r(7)**2 
p(18)=r(4)**2*r(6)+r(4)**2*r(8)+r(3)*r(9)**2+r(6)*r(9)**2+r(7)**2*r(8)+r(3)*r(7)**2 
p(19)=r(1)*r(3)*r(4)+r(2)*r(3)*r(4)+r(2)*r(8)*r(9)+r(5)*r(8)*r(9)+r(5)*r(6)*r(7)+r(1)*r(6)*r(7) 
p(20)=r(10)
end subroutine fi_a3bc
