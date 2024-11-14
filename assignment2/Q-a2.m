b = [0.537667139546100 - 1.30768829630527i,1.83388501459509 - 0.433592022305684i, -2.25884686100365 + 0.342624466538650i,0.862173320368121 + 3.57839693972576i,0.318765239858981 + 2.76943702988488i];
x = [0.0915735525189070 + 0.140903448980048i];
q = b(:);
m = length(b);
R = real(x);
I = imag(x);
v = 2*R;
u = -1*(R*R + I*I);
q(1) = b(1);
q(2) = b(2)+v*q(1);
for k = 3:m-1,
    q(k)= b(k)+ v*q(k-1) + u*q(k-2);
end
c = q(m-1);
e = b(m) + u*q(m-2);
p0 = (c*R)+e;
p1 = c*I;
p = p0 + p1*1i;
w = q(1:m-2);
h = w(:);
f = length(h);
h(1) = w(1);
h(2) = w(2)+v*w(1);
for k = 3:f-1,
    h(k)= w(k)+ v*h(k-1) + u*h(k-2);
end
c1 = h(f-1);
e1 = w(f) + u*h(f-2);
qw0 = c1*R+e1;
qw1 = c1*I;
res = c+2*I*(qw0+ qw1*1i)*1i;
a = [-1.34988694015652,3.03492346633186,0.725404224946106,-0.0630548731896560,0.714742903826096,-0.204966058299775,-0.124144348216312];
y = res ;
n = length(a);
q1 = a(:);
R1 = real(y);
I1 = imag(y);
v1 = 2*R1;
u1 = -1*(R1*R1 + I1*I1);
q1(1) = a(1);
q1(2) = a(2)+v1*q1(1);
for k = 3:n-1,
    q1(k)= a(k)+ v1*q1(k-1) + u1*q1(k-2);
end
c1 = q1(n-1);
e1 = a(n) + u1*q1(n-2);
pp0 = (c1*R1)+e1;
pp1 = c1*I1;
pp = pp0 + pp1*1i;
w = q1(1:n-2);
h = w(:);
f = length(h);
h(1) = w(1);
h(2) = w(2)+v1*w(1);
for k = 3:f-1,
    h(k)= w(k)+ v1*h(k-1) + u1*h(k-2);
end
c2 = h(f-1);
e2 = w(f) + u1*h(f-2);
qq0 = c2*R1+e2;
qq1 = c2*I1;
qq = qq0+ qq1*1i ;
d = h(1:f-2);
l = length(d);
d(1) = w(1);
d(2) = w(2)+v1*d(1);
if l>2
    for k = 3:l-1,
        d(k)= w(k)+ v1*d(k-1) + u1*d(k-2);
    end
    e3 = w(l) + u1*d(l-2);
else
    e3 = d(l);
end
for k = 3:l-1,
        d(k)= w(k)+ v1*d(k-1) + u1*d(k-2);
    end
e3 = w(l) + u1*d(l-2);
c3 = d(l-1);
ppp0 = (c3*R1)+e3;
ppp1 = c3*I1;
ppp = ppp0 + ppp1*1i; 
qx = 2*I1*ppp*1i+c2;
o = 2*qq + 4*I1*qx*1i;
disp(round(o,5,'significant'));