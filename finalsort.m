 function out = finalsort(s2,t2)
            n=1;
            r(1)=struct('name',' ','value',1);
            qpop=0.5;
            qpm=1-qpop;
            for i=1:191
                for j=1:46
                    if string(s2(i).name)==string(t2(j).name)
                    r(n).name=s2(i).name;
                    r(n).value=qpop*t2(j).value+qpm*s2(i).value;
                    n=n+1;
                    end
                end
            end
            for k=1:length(r)-1
            indlow=k;
             for l=(k+1):length(r)
                if r(l).value<r(indlow).value
                indlow=l;
                end
              end
            temp=r(k);
            r(k)=r(indlow);
            r(indlow)=temp;
            end
            out=r;
 end