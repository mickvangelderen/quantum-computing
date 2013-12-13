N = 16;
x1 = (0:N - 1)'; % x register in maximal superposition
y = mod(10.^x1, 21); % y register after modular exponentiation

QFT4 = qft(4);

outcomes = unique(y);
noutcomes = length(outcomes);
X = zeros(length(y), noutcomes);
for n = 1:noutcomes
	x2 = y==outcomes(n);
	x2 = x2 ./ sqrt(sum(x2)); % x register after y measurement
	X(:,n) = x2;
	
	figure
	subplot(1,2,1);	stem(x1, x2);
	title(['outcome = ' int2str(outcomes(n))]);
	subplot(1,2,2); stem(x1, abs(QFT4*x2));
	title(['QFT4*x']);
end
