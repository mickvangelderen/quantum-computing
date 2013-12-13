function QFT = qft(n_qubits)
%qft Quantum Fourier Transform
%   Computes the unitary QFT matrix for a given number of qubits. 

N = 2^n_qubits;

QFT = zeros(N,N);
for k = 0:(N - 1)
	for l = 0:(N - 1)
		QFT(k + 1, l + 1) = exp(2i*pi*k*l/N);
	end
end

QFT = QFT ./ sqrt(N);