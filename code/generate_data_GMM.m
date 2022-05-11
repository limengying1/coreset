function data = generate_data_GMM(dim, model_class, m, s, num)
    %   ���ɶ����ά��˹�ֲ�����
    %   dimΪ��˹�ֲ���ά��
    %   model_classΪ���ɵ���������
    %   mΪ��˹�ֲ�������ֵ����СΪmodel_class*dim
    %   sΪ��˹�ֲ���Э�����󣬴�СΪdim*dim*model_class
    %   numΪ�����˹�ֲ��������������СΪmodel_class*1
    %   ����ֵdataΪ���ɵ����ݣ����СΪnum*(dim+1)
    %   ǰdim��Ϊ��˹�ֲ����ݣ���(dim+1)��Ϊ��������
    %   �ú����������ɶ����˹�ֲ����ݣ���Ϊ�����㷨�ṩ����
    data = [];
    for i = 1 : model_class
        data1 = ones(num(i), dim + 1);
        data1(:, (1 : dim)) = mvnrnd(m(i, :), s(:, :, i), num(i));
        for j = 1 : num(i)
            data1(j, dim + 1) = i;
        end
        data = [data; data1];
    end
end