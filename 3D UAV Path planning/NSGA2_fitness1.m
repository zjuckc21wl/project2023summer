function [ f1 ] = NSGA2_fitness1( dna)
%NSGA2_FITNESS1 Summary of this function goes here
%���������㺽·���ȴ���
dnanum=size(dna,1);          %��Ⱥ��Ŀ
dnalength=size(dna,2)-1;     %�м��Σ��൱����Ⱥ�еĸ���Ϊ�㣬�����֮�����������ж������߶Σ����Ҫ��1
f1=zeros(dnanum,1);          %ÿ�ζ�Ӧ�ĺ�·���ȴ���
for i=1:1:dnanum
    f1(i,1)=0;
    for j=1:1:dnalength
        d(1)=(dna(i,j+1,1)-dna(i,j,1))*10;
        d(2)=(dna(i,j+1,2)-dna(i,j,2))*10;  % *10����ΪÿС���ֻ���Ϊ10��
        d(3)=dna(i,j+1,3)-dna(i,j,3);
        d=d.^2;
        f1(i,1)=f1(i,1)+sqrt(d(1)+d(2)+d(3));
        %i������Ŀ
    end
end

%   Detailed explanation goes here
