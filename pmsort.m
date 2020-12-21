function out=pmsort(s)
for i=1:190
    indlow=i;
    for j=(i+1):191
        if s(j).value<s(indlow).value
            indlow=j;
        end
    end
    temp=s(i);
    s(i)=s(indlow);
    s(indlow)=temp;
end
out=s;
for k=1:191
    out(k).value=k;
end
end