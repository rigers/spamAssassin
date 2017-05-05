function x = getVector(processed_text)

% Create a vector with the vocab size with all entries -1. 
% Change the vector index that correspond with the vocab position in the
% text to 1. Returns the feature vector


n = 1899;

x = ones(n, 1)*-1;

    for i = 1:length(processed_text)
        x(processed_text(i))=1;
    end

end
