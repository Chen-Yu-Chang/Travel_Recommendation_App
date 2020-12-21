function s = torwant(tor)
%Find the overnight vistors(tourists) in specific year
%Edited app.YearDropDown.Items but not revised
s(1)=struct('name',' ','value',1);
k=1;
for i=1:1676
    if str2num(tor(i).Year)==2016
        if strcmp(string(tor(i).Variable),"Overnight visitors (tourists)")==1
            s(k).name=tor(i).Country;
            s(k).value=tor(i).Value;
            k=k+1;
        end
    end

end