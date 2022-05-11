function [res] =assignsum(distMatrix)
ass=assignment1(distMatrix);
res=0;
    if ~isempty(ass)
        for i=1:length(ass(:,1))
            res=res+distMatrix(i,ass(i,1));
        end
    end
end

