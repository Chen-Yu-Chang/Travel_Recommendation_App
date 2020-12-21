function out=torsort(t)
for i=1:45
    indlow=i;
    for j=(i+1):46
        if t(j).value>t(indlow).value
            indlow=j;
        end
    end
    temp=t(i);
    t(i)=t(indlow);
    t(indlow)=temp;
end
out=t;
for k=1:46
    out(k).value=k;
end
end