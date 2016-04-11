function [] = Aula02_fix1(freq, dur)
       
    fs = 1000;           % Frequencia de amostragem (Hz) fs >= 2*fo (100<fo<3000)
    t = 0:(1/fs):dur;
    
    x = sin(2.*pi.*freq.*t);
    plot(x)
    sound(x,fs)
end

%% Exercicio: Dada a função x(t) = sen(2*pi*f*t) para 100Hz < f <3000Hz com 
% certa duração. Criar uma função Aula02_fix1(freq, dur)

%% Resolução %%
% 
% 1- Criar um vetor t de 0 até Tfinal com um período ta = 1/fs
%         ta : tempo de amostragem
%         fs : frequência de amostragem
%         
% 2- Achar x(t)
% 
% 3- Sound(x,fs) 
%         x : vetor de tempos com período de amostragem
%         fs: frequencia de amostragam

%% Conclusão %%
% 1- É possível escutar som apenas quando o fs>2*fo, caso contrário, não é
%       posivel.
% 
% 2- Para uma frequência de amostragem fs constante. Quanto maior a
%       frequencia do sinal, mais agudo é o som. E quanto menor esta
%       frequencia, ele fica mais grave | Agudo - f alto | grave - f baixo.



