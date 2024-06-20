function z = SIR_obj_rmsd(x)
    B = struct;
    B.p = x;
    if istable(x)
        B.p = table2array(x);
    end    
    B.optim = 1;
    B = SIR_model(B);
    z = sqrt(sum((B.Idata-B.Y(B.Idata_time+1,2)').^2)+sum((B.Rdata-B.Y(B.Rdata_time+1,3)').^2));
    z = z/length(z);
	
	%(10,100)
	z = (B.Y(:,2)<10)*10;
	
end