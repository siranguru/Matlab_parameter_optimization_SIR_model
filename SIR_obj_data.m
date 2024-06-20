function z = SIR_obj_data(t,x)
    B = struct;
    B.p = x;
    B.optim = 1;
    B = SIR_model(B);
    z = B.Y(B.Idata_time+1,2)';
end