function y = myaskdemod(m,t2,bp,f)
ss=length(t2);
y=[];
for n=ss:ss:length(m)
  t=bp/99:bp/99:bp;
  as=cos(2*pi*f*t);                                        % carrier siignal 
  mm=as.*m((n-(ss-1)):n);
  t4=bp/99:bp/99:bp;
  z=trapz(t4,mm)                                              % intregation 
  zz=round((2*z/bp))                                     
  if(zz>7.5)                                  % logic level = (A1+A2)/2=7.5
    a=1;
  else
    a=0;
  end
  y=[y a];
end