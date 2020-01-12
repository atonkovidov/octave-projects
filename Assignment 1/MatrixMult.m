function [m]=MatrixMult(a,b)
[c,d]=size(a);
[e,f]=size(b);
m=zeros(c,f);
  for i=1:c
    for j=1:f
      for k=1:d
        m(i,j)=m(i,j)+a(i,k)*b(k,j);
      end
    end  
  end
endfunction