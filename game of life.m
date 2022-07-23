row=5;column=5;
generation=2;

gen0=[0 0 0 0 0;0 0 1 1 1;0 1 1 1 0;0 0 0 0 0;0 0 0 0 0];
gen1=[0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;0 0 0 0 0];

for p=1:4
    
for i=1:5
    for j=1:5
        neighbors=0;
        if((i+1)<6)
            if(gen0(i+1,j)==1)  
                neighbors=neighbors+1;
            end
        end
        if ((i-1)>=1)
            if (gen0(i-1,j)==1)
                neighbors=neighbors+1;
            end
        end
        if(j+1<6)
            if(gen0(i,j+1)==1)
                neighbors=neighbors+1;
            end
        end
        if((j-1)>=1)
            if(gen0(i,j-1)==1)
                neighbors=neighbors+1;
            end
        end
        if((i+1)<6 && (j+1)<6)
            if(gen0(i+1,j+1)==1)
                neighbors=neighbors+1;
            end
        end
        if((i-1)>=1 && (j-1)>=1)
            if(gen0(i-1,j-1)==1)
                neighbors=neighbors+1;
            end
        end
        if((i-1)>=1 && (j+1)<6)
            if(gen0(i-1,j+1)==1)
                neighbors=neighbors+1;
            end
            
        end
        if((i+1)<6 && (j-1)>=1)
            if(gen0(i+1,j-1)==1)
                neighbors=neighbors+1;
            end
        end
        if(gen0(i,j)==1)
            if(neighbors<1)
                gen1(i,j)=0;
            end
            if(neighbors==2 || neighbors==3)
                gen1(i,j)=1;
            end
            if(neighbors>3)
                gen1(i,j)=0;
            end
        end
        if(gen0(i,j)==0)
            if(neighbors==3)
                gen1(i,j)=1;
            end
        end
    end
end
    gen0=gen1;
    gen1=[0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;0 0 0 0 0];
    disp(gen0);
end
