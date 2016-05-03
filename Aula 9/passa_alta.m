function hpa = passa_alta( Deltaf, fc, fs)

    hpb = passa_baixa(Deltaf, fc, fs); 
    n =  length(hpb)-1:(length(hpb)-1)/2;
    imp = impulso(n);
    
    hpa = imp - hpb;

end

