% ������� ������� ��������� ������ ��� ������ �� ���������
% ����� �.�.

T= zeros(20,3);                         % ������ ������ ������� 20 3
T(:,1)=(-30 + int8((70)*rand(20,1)));   % ������ ����� - �������� ����������� (-30:40) ��������
T(:,2)=(0 + int8((20)*rand(20,1)));     % ������ � ������ ������ - ���������� � � �
T(:,3)=(0 + int8((20)*rand(20,1)))
formatSpec = '%d %d %d\n';
stations = fopen('stations.txt','w');   % ��������� ����
fprintf(stations, formatSpec, T');      % ���������� ������
fclose(stations);                       



% ��������� ������ ��� ���������
Z=zeros(20,20);
for i = 1:20
    x=1+T(i,2);
    y=1+T(i,3);
    Z(x,y)=T(i,1);
end
b = bar3(Z);
xlabel('x');
ylabel('y');