function [mu] = exercicio3(t, NC)

% t: vetor de tempo com instâncias das medições
% NC: medida do número de células a cada instante t

%%%%%%%%%%%%%%%%%%%%%%%%%%

% digite seu codigo aqui

tempo=[0,1,2,3,4,5,6]
celulas=[0.100,0.332,1.102,1.644,2.453,3.660,5.460]
% separando tempos
t1=tempo(1:3)
c1=celulas(1:3)
t4=tempo(4:end)
c4=celulas(4:end)
% linearizando
c1mod=log(c1)
c4mod=log(c4)
% indices
indice_1=polyfit(t1,c1mod,1)
indice_2=polyfit(t4,c4mod,1)

respostas=[indice_1(1),indice_2(1)]


% mantenha essas duas linhas finais, subtituindo mu pelo valor que você calculou
mu = respostas;

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
