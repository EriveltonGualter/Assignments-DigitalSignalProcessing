function [] = Aula02_fix1(freq, dur)
       
    fs = 1000;           % Frequencia de amostragem (Hz) fs >= 2*fo (100<fo<3000)
    t = 0:(1/fs):dur;
    
    x = sin(2.*pi.*freq.*t);
    plot(x)
    sound(x,fs)
end

%% Exercicio: Dada a fun��o x(t) = sen(2*pi*f*t) para 100Hz < f <3000Hz com 
% certa dura��o. Criar uma fun��o Aula02_fix1(freq, dur)

%% Resolu��o %%
% 
% 1- Criar um vetor t de 0 at� Tfinal com um per�odo ta = 1/fs
%         ta : tempo de amostragem
%         fs : frequ�ncia de amostragem
%         
% 2- Achar x(t)
% 
% 3- Sound(x,fs) 
%         x : vetor de tempos com per�odo de amostragem
%         fs: frequencia de amostragam

%% Conclus�o %%
% 1- � poss�vel escutar som apenas quando o fs>2*fo, caso contr�rio, n�o �
%       posivel.
% 
% 2- Para uma frequ�ncia de amostragem fs constante. Quanto maior a
%       frequencia do sinal, mais agudo � o som. E quanto menor esta
%       frequencia, ele fica mais grave | Agudo - f alto | grave - f baixo.



