%EVCS recommendation


function [RA]=TOPSIS(filename)

[ndata,text,alldata]=xlsread(filename,1);
P=xlsread(filename,1);


W=xlsread(filename,2); %Weight matrix


[m,n]=size(P);

U=P.^2;
T=sum(U).^(1/2);

T=repmat(T,m,1);


T=P./T;

W=repmat(W,m,1);



T=T.*W

mak=max(T)
mi=min(T)

mak=repmat(mak,m,1)
mi=repmat(mi,m,1)


maksi=T-mak;
maksik=maksi.^2;

mink=T-mi;
minks=mink.^2;

SP=sum(maksik,2).^(1/2);
SM=sum(minks,2).^(1/2);


SC=zeros(m,1);

for i=1:m
    SC(i)=SM(i)/(SP(i)+SM(i));
end

[sd,p]=sort(SC,'descend');
r=[1:m]';
r(p)=r;

RA=[SC,r];


xlswrite(filename,SP,3,'B2');
xlswrite(filename,SM,3,'C2');
xlswrite(filename,SC,3,'D2');
xlswrite(filename,text,3,'A2');
xlswrite(filename,RA,3,'D2');
end



